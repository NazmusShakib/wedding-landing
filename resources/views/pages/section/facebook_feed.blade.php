<div class="services-section services clear pt-90">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 mb-30"> <span class="heading-meta">facebook . feeds</span> 
                <h2 class="pwe-heading animate-box" data-animate-effect="fadeInLeft">Recent Facebook Feeds</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                @php
                    $fbPageName=config('facebook_page_name');
                    $facebook_page_id=config('facebook_page_id');
                    $facebook_app_id=config('facebook_app_id');
                    $facebook_app_secret=config('facebook_app_secret');
                    $facebook_page_access_token=config('facebook_page_access_token');
                    $api_version = "v12.0";

                    // echo file_get_contents('https://graph.facebook.com/'.$api_version.'/oauth/access_token?grant_type=fb_exchange_token&client_id='.$facebook_app_id.'&client_secret='.$facebook_app_secret.'&fb_exchange_token='.$facebook_page_access_token);
                    // exit;
                    
                    $fields = "id,attachments,message,created_time";
                    // $fields = "id,attachments,message,picture,icon,created_time,from,story,likes.limit(0).summary(true),comments.limit(0).summary(true)";
                    $limit = 10;
                    $json_link = "https://graph.facebook.com/{$facebook_page_id}/posts?fields={$fields}&limit={$limit}&access_token={$facebook_page_access_token}";
                    $json = file_get_contents($json_link);
                    $feeds = json_decode($json, true);
                @endphp

                <div class="owl-carousel owl-theme">
                    @foreach ($feeds['data'] as $feed)
                        <div class="item">
                            <div class="position-re o-hidden">
                                <img src="{{ $feed['attachments']['data']['0']['media']['image']['src'] }}">
                            </div>
                            <div class="con"> 
                                <span class="category">
                                    <a target="_blank" href="{{ $feed['attachments']['data']['0']['target']['url'] }}">
                                        . Facebook Feed
                                    </a>
                                </span>
                                <h5>
                                    <a target="_blank" href="{{ $feed['attachments']['data']['0']['target']['url'] }}">
                                        @if(!empty($feed['attachments']['data']['0']['description']))
                                        {{ substr(strip_tags($feed['attachments']['data']['0']['description']),0,60) }}
                                        @else
                                            {{ substr(strip_tags($feed['message']),0,60) }}
                                        @endif
                                    </a>
                                </h5> 
                                <a target="_blank" href="{{ $feed['attachments']['data']['0']['target']['url'] }}">
                                    <i class="ti-arrow-right"></i>
                                </a>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>