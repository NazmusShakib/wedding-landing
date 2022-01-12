<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Portfolio;

class Package extends Model
{
    use HasFactory;

    protected $casts = [
        'includes' =>'json',
    ];

    public function portfolios()
    {
        return $this->belongsTo(Portfolio::class, 'package_id');
    }
}
