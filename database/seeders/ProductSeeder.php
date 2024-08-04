<?php

namespace Database\Seeders;

use App\Models\Product;
use App\Models\ProductColor;
use App\Models\ProductGallery;
use App\Models\ProductSize;
use App\Models\ProductVariant;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Str;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Xóa dữ liệu cũ
        Schema::disableForeignKeyConstraints();
        ProductVariant::query()->truncate();
        ProductGallery::query()->truncate();
        Product::query()->truncate();
        ProductSize::query()->truncate();
        ProductColor::query()->truncate();
        // thêm size
        foreach (['S', 'M', 'L', 'XL', 'XXL'] as $item) {
            ProductSize::query()->create([
                'name' => $item
            ]);
        }
        // thêm màu
        foreach (['black', 'white', 'gray', 'blue', 'yellow', 'red'] as $item) {
            ProductColor::query()->create([
                'name' => $item
            ]);
        }

        // Bảng product
        for ($i = 0; $i < 100; $i++) {
            $name = fake()->text(50);
            Product::query()->create([
                'category_id' => rand(5, 9),
                'name' => $name,
                'slug' => Str::slug($name) . Str::random(8),
                'sku' => Str::random(8) . $i,
                'img_thumb' => 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518297988265.jpg&w=2048&q=75',
                'price' => 100000,
                'price_sale' => 690000,
                'material' => fake()->text(100),
                'description' => fake()->text(100),
                'use_manual' => fake()->text(100),
            ]);
        }

        // product_gallery
        for ($i = 1; $i < 101; $i++) {
            ProductGallery::query()->insert([
                [
                    'product_id' => $i,
                    'image' => 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17185541935938931.jpg&w=2048&q=75'
                ],
                [
                    'product_id' => $i,
                    'image' => 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17201518361453035.jpg&w=2048&q=75'
                ]
            ]);
        }
    }
}
