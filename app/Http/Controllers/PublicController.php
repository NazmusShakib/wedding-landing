<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Service;
use App\Models\Package;
use App\Models\Portfolio;

class PublicController extends Controller
{
    public $paths = [
        '/'=>'home', 
        'about-us'=>'aboutUs',
        'services'=>'services',
        'portfolio'=>'portfolio',
        'blog'=>'blog',
        'contact-us'=>'contactUs',
    ];

    public function page(Request $request)
    {
        if (array_key_exists($request->path(), $this->paths)) {
            return view('pages.'.$this->paths[$request->path()]);
        } else {
            abort(404);
        }
    }

    public function serviceDetails($id)
    {
        $service = Service::find($id)->toArray();
        return view('pages.serviceDetails', compact('service'));
    }

    public function packageDetails($id)
    {
        $package = Package::find($id)->toArray();
        return view('pages.packageDetails', compact('package'));
    }

    public function portfolioDetails($id)
    {
        $portfolio = Portfolio::with('package')->find($id)->toArray();
        return view('pages.portfolioDetails', compact('portfolio'));
    }
}
