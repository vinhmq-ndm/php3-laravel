<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $fillable = [  // tự động match các trường dữ liệu ta truyền vào trong request, từ request gọi tới insert trong csdl, khi lấy dữ liệu ra, cũng căn cứ vào fillable này để match ngược lại vào trong csdl        'name',
        'name',
        'cover',
        'is_active'
    ];

    protected $casts = [
        'is_active' => 'boolean'
    ];
    public function products() {
        return $this->hasMany(Product::class);
    }
}
