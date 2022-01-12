<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Package;

class Portfolio extends Model
{
    use HasFactory;

    protected $casts = [
        'videos' =>'json',
        'pictures' =>'json',
    ];

    public function setPicturesAttribute($pictures)
    {
        if (is_array($pictures)) {
            $this->attributes['pictures'] = json_encode($pictures);
        }
    }

    public function getPicturesAttribute($pictures)
    {
        return json_decode($pictures, true);
    }

    public function package()
    {
        return $this->belongsTo(Package::class, 'package_id');
    }
}
