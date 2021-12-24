<template>
    <div>
        <!-- <Breadcumb v-bind:title="title"/> -->
        <section class="top-blog">
            <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active" >
                        <img class="d-block w-100" src="/images/blog-banner.jpg" alt="blog-banner">
                    </div>
                    <div class="carousel-item" v-for="(blog,index) in blogs" :key="index">
                        <img class="d-block w-100" :src="'https://shopx-api.betamxpertz.xyz' + blog.featured_image" :alt="blog.title">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
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
    name:'Blog',
    components:{
        BlogSidebar
    },
    data(){
        return{
            // title:'Blog',
            blogs:[],
            search:'',
        }
    },
    methods:{
        fetchAllBlogs() {
            axios.get('https://shopx-api.betamxpertz.xyz/api/blogs')
            .then(response => {
                this.blogs = response.data
            })
            .catch(error=>{
                console.log(error)
            }) 
        },
    },
    mounted(){
        this.fetchAllBlogs();
        // document.title = 'Best Web Development Blogs You Should Follow | Creative Web X'
    }
}
</script>