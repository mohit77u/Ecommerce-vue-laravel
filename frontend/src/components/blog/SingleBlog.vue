<template>
    <div>

         <!-- <Breadcumb v-bind:title="title"/> -->

        <section class="single-blog-banner">
            <img class="w-100" :src="'https://shopx-api.betamxpertz.xyz' + blog.featured_image" :alt="blog.title">
        </section>
        <section class="single-blog my-5">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8">
                        <div class="single">
                            <h2 class="mb-3">{{blog.title}}</h2>
                            <div class="content mt-5">
                                <p>{{blog.description}}</p>
                                <h4 class="mt-5">{{blog.headingone}}</h4>
                                <p>{{blog.contentone}}</p>
                                <h4 class="mt-5">{{blog.headingtwo}}</h4>
                                <p>{{blog.contenttwo}}</p>
                                <h4 class="mt-5">{{blog.headingthree}}</h4>
                                <p>{{blog.contentthree}}</p>
                                <h4 class="mt-5">{{blog.headingfour}}</h4>
                                <p>{{blog.contentfour}}</p>
                                <h4 class="mt-5">{{blog.headingfive}}</h4>
                                <p>{{blog.contentfive}}</p>
                                 <h4 class="mt-5">{{blog.headingsix}}</h4>
                                <p>{{blog.contentsix}}</p>
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

        <section class="blog what py-5">
            <div class="container mb-5">
                <div class="section-heading mb-5">
                    <h6>Blog</h6>
                    <h2>Latest blogs for you</h2>
                </div>
                <div class="row">
                    <div class="col-sm-4" v-for="(blog,index) in blogs.slice(0,3)" :key="index">
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
                <div class="text-center mt-5">
                    <router-link class="letsbtn" to="/blog">See all blogs</router-link>
                </div>
            </div>
        </section>

       

    </div>
</template>

<script>
import axios from 'axios'
import BlogSidebar from './BlogSidebar.vue'
export default {
    name:'SingleBlog',
    components:{
        BlogSidebar,
    },
    data(){
        return{
            blog:[],
            title: '',
            blogs:[],
        }
    },
    watch:{
        $route(){
            this.fetchBlog();
            this.fetchAllBlogs();
        }
    },
    methods:{
        fetchBlog(){
            axios.get(`https://shopx-api.betamxpertz.xyz/api/blogs/${this.$route.params.id}`)
            .then((res)=> {
                this.blog = res.data
                this.title = res.data.title
            });
        },
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
        this.fetchBlog();
        this.fetchAllBlogs();
        // document.title = 'Blogs on Web Development And Digital Marketing | Creative Web X';
    }
}
</script>