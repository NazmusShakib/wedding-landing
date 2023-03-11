<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    use HasFactory;

    public function scopeDisplayOrderd($query)
    {
        return $query->orderBy('display_order', 'ASC');
    }

    public function scopePublished($query)
    {
        return $query->where('is_published', true);
    }
}
