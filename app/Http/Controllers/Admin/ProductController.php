<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Models\Category;
use App\Models\Product;
use App\Models\ProductColor;
use App\Models\ProductGallery;
use App\Models\ProductSize;
use App\Models\ProductVariant;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class ProductController extends Controller
{
    const PATH_VIEW = 'admin.products.';
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = Product::query()->with(['category'])->latest('id')->get();
        return view(self::PATH_VIEW.__FUNCTION__, compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = Category::query()->pluck('name', 'id')->all();
        $sizes = ProductSize::query()->pluck('name', 'id')->all();
        $colors = ProductColor::query()->pluck('name', 'id')->all();
        return view(self::PATH_VIEW.__FUNCTION__, compact('categories', 'sizes', 'colors'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreProductRequest $request)
    {
        //
//        dd($request->all());
        $data = $request->except(['product_variants', 'img_thumb', 'product_galleries']);
        $data['is_best_sale'] = isset($data['is_best_sale']) ? 1: 0;
        $data['is_40_sale'] = isset($data['is_40_sale']) ? 1: 0;
        $data['is_hot_online'] = isset($data['is_hot_online']) ? 1: 0;
        $data['slug'] = Str::slug($data['name'].'-'.$data['sku']);
        if (!empty($request->hasFile('img_thumb'))) {
            $data['img_thumb'] = Storage::put('products', $request->file('img_thumb'));
        }

//        dd($data);

        try {
            DB::beginTransaction();
            // tạo dữ liệu bảng product
            $product = Product::query()->create($data);
            // tạo dữ liệu cho bảng product variants
            foreach ($request->product_variants as $item) {
                ProductVariant::query()->create([
                    'product_size_id' => $item['size'],
                    'product_color_id' => $item['color'],
                    'image' => !empty($item['image']) ? Storage::put('product_variants', $item['image']) : '',
                    'quantity' => !empty($item['quantity']) ? !empty($item['quantity']) : 0,
                    'product_id'=> $product->id
                ]);
            }
            // tạo dữ liệu cho bảng product gallery
            foreach ($request->product_galleries as $item) {
                ProductGallery::query()->create([
                    'image' => Storage::put('product_galleries', $item),
                    'product_id' => $product->id
                ]);
            }
            DB::commit();
            return redirect()->route('admin.products.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            // dd($exception->getMessage());
            // thực hiện xóa ảnh trong storage
            return back();
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Product $product)
    {
        return view(self::PATH_VIEW.__FUNCTION__, compact('product'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Product $product)
    {
        return view(self::PATH_VIEW.__FUNCTION__, compact('product'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateProductRequest $request, Product $product)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product)
    {
        //
    }
}
