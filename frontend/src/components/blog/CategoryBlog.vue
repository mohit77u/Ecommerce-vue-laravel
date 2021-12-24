<template>
    <div>
        <!-- <Breadcumb v-bind:title="title"/> -->
        <section class="breadcumb">
            <div class="breadcumb-main">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><router-link class="homelink" to="/">Home</router-link></li>
                    <i class="fas fa-chevron-right"></i>
                    <li class="breadcrumb-item active">{{title}}</li>
                </ol>
                <h1>{{title}}</h1>
            </div>
        </section>
        <section class="blog">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8">
                        <div class="left-blog">
                            <div class="section-heading mb-5">
                                <h6>Blog</h6>
                                <h2>Interesting reads for you</h2>
                                <p v-if="searchItem">No results found</p>
                            </div>
                            <div class="row">
                                <div class="col-sm-6" v-for="(blog,index) in blogs" :key="index">
                                    <router-link :to="{name:'SingleBlog', params:{id:blog.id,slug:blog.slug}}">
                                        <div class="blog-card card">
                                            <div class="blog-top">
                                                <img :src="'https://shopx-api.betamxpertz.xyz' + blog.featured_image" :alt="blog.title">
                                                <!-- <p>{{blog.category_name}}</p> -->
                                            </div>
                                            <div class="card-body">
                                                <h4 class="blogtitle">{{blog.title}}</h4>
                                                <p>{{blog.description}}</p>
                                                <div class="find">
                                                    <div class="line"></div>
                                                    <p class="findbtn">Find out more</p>
                                                </div>
                                            </div>
                                        </div>
                                    </router-link>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="sidebar">
                            <BlogSidebar/>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>
</template>

<script>
// import Breadcumb from '../reuseable/Breadcumb.vue'
import BlogSidebar from '../blog/BlogSidebar.vue'
import axios from 'axios'
export default {
    name:'CategoryBlog',
    components:{
        BlogSidebar
    },
    
    data(){
        return{
            // title:'',
            blogs:[],
            category:[],
            title:'',
            
        }
    },
    computed:{
        searchItem(){
            return this.blogs.length == 0
        }
    },
    watch:{
        $route(){
            this.fetchAllBlogs();
            this.fetchCategory();
        }
    },
    methods:{
        fetchAllBlogs() {
            axios.get(`https://shopx-api.betamxpertz.xyz/api/category/${this.$route.params.id}`)
            .then((res)=> {
                this.blogs = res.data
            });          
            
        },
        fetchCategory() {
            axios.get(`https://shopx-api.betamxpertz.xyz/api/blog_categories/${this.$route.params.id}`)
            .then((res)=> {
                this.category = res.data
                this.title = res.data.category_name
            });          
            
        },
    },
    mounted(){
        this.fetchAllBlogs();
        this.fetchCategory();
        // document.title = 'Category Blogs You Can Follow | Creative Web X';
    }
}
</script>