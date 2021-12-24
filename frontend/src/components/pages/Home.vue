<template>
    <div>

        <section class="slider-home">
            <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel" data-bs-inetrval="4000">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                    <img src="/images/slider-1.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                    <img src="/images/slider-2.jpg" class="d-block w-100" alt="...">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                    <span class="fas fa-long-arrow-alt-left"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                    <span class="fas fa-long-arrow-alt-right"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </section>

        <section class="after-slider pt-5">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 text-center">
                        <span class="">
                            <figure class="pb-3">
                                <img src="/images/truck.png" alt="mini">
                            </figure>
                        </span>
                        <h4>Free Delivery</h4>
                        <p class="">If you are going to use of Lorem, you need to be sure there anything</p>
                    </div>
                    <div class="col-sm-4 text-center">
                        <span>
                            <figure class="">
                                <img src="/images/doller.png" alt="mini">
                            </figure>
                        </span>
                        <h4>30 Day Return</h4>
                        <p>If you are going to use of Lorem, you need to be sure there anything</p>
                    </div>
                    <div class="col-sm-4 text-center">
                        <span>
                            <figure class="">
                                <img src="/images/24hed.png" alt="mini">
                            </figure>
                        </span>
                        <h4>27/4 Support</h4>
                        <p>If you are going to use of Lorem, you need to be sure there anything</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="small-banner mt-5">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <img src="/images/bann-1.jpg" alt="">
                    </div>
                    <div class="col-sm-3">
                        <img src="/images/bann-2.jpg" alt="">
                    </div>
                    <div class="col-sm-3">
                        <img src="/images/bann-3.jpg" alt="">
                    </div>
                    <div class="col-sm-3">
                        <img src="/images/bann-4.jpg" alt="">
                    </div>
                </div>
            </div>
        </section>

         <section class="products mt-5">
            <div class="container">
                <div class="section-heading">
                    <h2>Mobiles</h2>
                    <router-link class="secondarybtn" to="/product/category/5">View all</router-link>
                </div>
                <Mobiles/>
                <!-- <div class="text-center my-2">
                    <router-link to="/shop" class="letsbtn">See more products</router-link>
                </div> -->
            </div>
        </section>

        <section class="products">
            <div class="container">
                <div class="section-heading">
                    <h2>Shirts</h2>
                    <router-link class="secondarybtn" to="/product/category/7">View all</router-link>
                </div>               
                <Shirts/>
                <!-- <div class="text-center my-2">
                    <router-link to="/shop" class="letsbtn">See more products</router-link>
                </div> -->
            </div>
        </section>

        <section class="shop-banner">
            <img src="/images/shop-banner.jpg" alt="shop-banner">
        </section>

        <section class="products py-5">
            <div class="container">
                <h2>Latest Products</h2>                
                <LatestProducts/>
                <div class="text-center my-2">
                    <router-link to="/shop" class="letsbtn">See more products</router-link>
                </div>
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
import LatestProducts from '../products/LatestProducts.vue'
import Mobiles from '../products/Mobiles.vue'
import Shirts from '../products/Shirts.vue'
import axios from 'axios'
export default {
    name:'Home',
    components: {
        LatestProducts,Mobiles,Shirts,
    },
    data(){
        return{
            blogs:[],
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