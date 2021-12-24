<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Cart;
use App\Models\User;
use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Product::orderBy('created_at', 'desc')->get();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request){
    
        $request->validate([
            'file' => 'required|mimes:jpg,jpeg,png|max:2048',
            
        ]);

        $file_name = time().'_'.$request->file->getClientOriginalName();
        $file_path = $request->file('file')->storeAs('products', $file_name, 'public');

        Product::create([
            'name' => $request->name,
            'slug' => $request->slug,
            'image' => $file_name,
            'path' => '/storage/' . $file_path,
            'price' => $request->price,
            'quantity' => $request->quantity,
            'short_description' => $request->short_description,
            'description' => $request->description,
            'category' => $request->category,

        ]);

        return response(['message' => 'Product created Successfully !!'], 200);
        

        
    }

    public function addtocart(Request $request){
        // $user = Auth::user();

        $request->validate([
            'user_id' => 'required',
        ]);

        Cart::create($request->all());

        return response(["message" => "Added to cart successfully"], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        return $product;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        $product->fill($request->post())->save();

        return response(['message' => 'Product updated Successfully !!'], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        $product->delete();
        return response(['message' => 'Product deleted Successfully !!'], 204);
    }

    public function viewcart(){
        $id = Auth::user()->id;
        $cart = DB::table('cart')->where('user_id', $id)->get();
        return $cart;
    }

    public function deleteCart(Cart $cart)
    {
        $cart->delete();
        return response(['message' => 'Product removed from Cart Successfully !!'], 204);
    }

    public function orders(Request $request){
        $request->validate([
            'first_name' => 'required',
            'last_name' => 'required',
            'address_line_1' => 'required',
            'address_line_2' => 'required',
            'city' => 'required',
            'state' => 'required',
            'pincode' => 'required',
        ]);

        $id = Auth::user()->id;

        $productname = DB::table('cart')->where('user_id', $id)->pluck('product')->all();
        $stringname = implode(",",$productname);

        $productprice = DB::table('cart')->where('user_id', $id)->pluck('price')->all();
        $stringprice = implode(",",$productprice);

        Order::create([
            'user_id' => $id,
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'address_line_1' => $request->address_line_1,
            'address_line_2' => $request->address_line_2,
            'city' => $request->city,
            'state' => $request->state,
            'pincode' => $request->pincode,
            'delivery_method' => $request->delivery_method,
            'product_name' => $stringname,
            'price' => $stringprice,
            'total_price' => $request->total_price,
        ]);

        DB::table('cart')->where('user_id', $id)->delete();

        return response(["message" => "Order placed successfully !!"], 200);
    }

    public function mobile(){

        $product = Product::where('category','5')->orderBy('created_at', 'desc')->get();
        return $product;
    }

    public function shoes(){

        $product = Product::where('category','6')->orderBy('created_at', 'desc')->get();
        return $product;
    }

    public function shirts(){

        $product = Product::where('category','7')->orderBy('created_at', 'desc')->get();
        return $product;
    }

    public function categoryproduct($id){

        $product = Product::where('category', $id)
                ->get();

        return $product;
    }

    public function search(Request $request){
        $search = $request->get('q');
        return Product::where('name', 'like', '%'.$search.'%')->get();
    }
}
