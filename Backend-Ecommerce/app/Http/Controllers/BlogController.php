<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\BlogCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Blog::all();
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
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'slug' => 'required',
            'file' => 'required|mimes:jpg,jpeg,png|max:2048',
        ]);

        $file_name = time().'_'.$request->file->getClientOriginalName();
        $file_path = $request->file('file')->storeAs('blogs', $file_name, 'public');
        
        Blog::create([
            'title' => $request->title,
            'slug' => $request->slug,
            'category_id' => $request->category_id,
            'featured_image' => '/storage/' . $file_path,
            'description' => $request->description,
            'headingone' => $request->headingone,
            'contentone' => $request->contentone,
            'headingtwo' => $request->headingtwo,
            'contenttwo' => $request->contenttwo,
            'headingthree' => $request->headingthree,
            'contentthree' => $request->contentthree,
            'headingfour' => $request->headingfour,
            'contentfour' => $request->contentfour,
            'headingfive' => $request->headingfive,
            'contentfive' => $request->contentfive,
            'headingsix' => $request->headingsix,
            'contentsix' => $request->contentsix,
        ]);

        return response(["message" => "Blog created successfully !!"], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function show(Blog $blog)
    {
        return $blog;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function edit(Blog $blog)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Blog $blog)
    {
        $blog->fill($request->post())->save();

        return response(['message' => 'Blog updated Successfully !!'], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function destroy(Blog $blog)
    {
        $blog->delete();
        return response(['message' => 'Blog deleted Successfully !!'], 204);
    }

    public function categoryblog($id){

        $blog = Blog::where('category_id', $id)
                ->get();

        return $blog;
    }

    public function search(Request $request){
        $search = $request->get('q');
        return Blog::where('title', 'like', '%'.$search.'%')->get();
    }
}
