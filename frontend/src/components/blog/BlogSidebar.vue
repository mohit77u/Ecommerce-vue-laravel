<template>
    <div>
        <div class="search">
            <h3>Search</h3>
            <form :action="'/blog/search/q=' + search">
                <div class="input-group flex-nowrap">
                    <input type="text" v-model="search" class="form-control" placeholder="Search">
                    <span class="input-group-text"  type ="submit" id="addon-wrapping"><i class="fas fa-search"></i></span>
                </div>
            </form>
        </div>
        <div class="category">
            <h3>Category</h3>
            <div class="category-inner">
                <ul>
                    <li v-for="(category,index) in categories" :key="index"><router-link class="sidetexticon" :to="{name:'CategoryBlog', params:{id:category.id,slug:category.url}}">{{category.category_name}}</router-link><i class="fas fa-angle-double-right"></i></li>
                </ul>
            </div>
        </div>
        <div class="category mt-5">
            <h3>Recently published</h3>
            <div class="category-inner">
                <ul>
                    <li v-for="(blog,index) in blogs" :key="index"><router-link class="sidetexticon" :to="{name:'SingleBlog', params:{id:blog.id,slug:blog.slug}}">{{blog.title}}</router-link><i class="fas fa-angle-double-right"></i></li>
                </ul>
            </div>
        </div>
    </div>
</template>

<script>
import axios from 'axios'
export default {
    name:'BlogSidebar',
    data(){
        return{
            categories:[],
            blogs:[],
            search: '',
        }
    },
    methods:{
        fetchCategory(){
            axios.get('https://shopx-api.betamxpertz.xyz/api/blog_categories')
            .then(res=>{
                this.categories = res.data
            }).catch(()=>{

            })
        },
        fetchAllBlogs(){
            axios.get('https://shopx-api.betamxpertz.xyz/api/blogs')
            .then(res=>{
                this.blogs = res.data
            }).catch(()=>{

            })
        },
    },
    mounted(){
        this.fetchCategory();
        this.fetchAllBlogs();
    }
}
</script>