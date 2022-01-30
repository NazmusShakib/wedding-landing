<?php

namespace App\Http\Controllers;
use DB;
use Illuminate\Http\Request;

class FacebookAccessManageController extends Controller
{
    public $fb;
    public $fb_helper;
    public $fb_page_helper;

    public function __construct() {
        $this->fb = new \Facebook\Facebook([
            'app_id' => config('facebook_app_id'),
            'app_secret' => config('facebook_app_secret'),
            'default_graph_version' => 'v12.0',
            //'default_access_token' => '{access-token}', // optional
        ]);
        $this->fb_helper = $this->fb->getRedirectLoginHelper();
        $this->fb_page_helper = $this->fb->getPageTabHelper();
    }

    public function getFacebookLoginUrl(Request $request) {
      $permissions = ['email','pages_read_user_content','pages_show_list']; // Optional permissions
      $loginUrl =$this->fb_helper->getLoginUrl(route('getFacebookCallbackUrl'), $permissions);
      return redirect($loginUrl);
    }

    public function getFacebookCallbackUrl(Request $request) {
      if (isset($request->state)) {
          $this->fb_helper->getPersistentDataHandler()->set('state', $request->state);
      }

      try {
          $accessToken = $this->fb_helper->getAccessToken();
        } catch(\Facebook\Exceptions\FacebookResponseException $e) {
          // When Graph returns an error
          echo 'Graph returned an error: ' . $e->getMessage();
          exit;
        } catch(\Facebook\Exceptions\FacebookSDKException $e) {
          // When validation fails or other local issues
          echo 'Facebook SDK returned an error: ' . $e->getMessage();
          exit;
        }
          
        if (!isset($accessToken)) {
          if ($this->fb_helper->getError()) {
            header('HTTP/1.0 401 Unauthorized');
            echo "Error: " . $this->fb_helper->getError() . "\n";
            echo "Error Code: " . $this->fb_helper->getErrorCode() . "\n";
            echo "Error Reason: " . $this->fb_helper->getErrorReason() . "\n";
            echo "Error Description: " . $this->fb_helper->getErrorDescription() . "\n";
          } else {
            header('HTTP/1.0 400 Bad Request');
            echo 'Bad request';
          }
          exit;
        }
          
        if(!$accessToken->isLongLived()){
          // Exchanges a short-lived access token for a long-lived one
          try {
            $accessToken = $oAuth2Client->getLongLivedAccessToken($accessToken);
          } catch (\Facebook\Exceptions\FacebookSDKException $e) {
            echo "<p>Error getting long-lived access token: " . $e->getMessage() . "</p>\n\n";
            exit;
          }
        }
          
        //$fb->setDefaultAccessToken($accessToken);
          
        # These will fall back to the default access token
      //   $res    =   $this->fb->get('/me',$accessToken->getValue());
      //   $fbUser =   $res->getDecodedBody();
          
          
      //   $resImg     =   $this->fb->get('/me/picture?type=large&redirect=false',$accessToken->getValue());
      //   $picture    =   $resImg->getGraphObject();
          
          
      //   $_SESSION['fbUserId']       =   $fbUser['id'];
      //   $_SESSION['fbUserName']     =   $fbUser['name'];
      //   $_SESSION['fbAccessToken']  =   $accessToken->getValue();
        
      DB::table('admin_config')->where('name', 'facebook_page_access_token')->update(['value' => $accessToken->getValue()]);

      return redirect('/');
  }
}
