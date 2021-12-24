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

        <section class="shop-products products">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="sidebar">
                            <ProductSidebar/>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h2>Shop</h2>
                        <p v-if="searchItem">No products found</p>
                       <div class="row py-2 single-product">
                            <div class="col-sm-4" v-for="(product,index) in products" :key="index">
                                <router-link :to="{ name:'SingleProduct', params: { id: product.id} }">
                                    <div class="card">
                                        <div class="text-center image">
                                            <figure><img v-bind:src="'https://shopx-api.betamxpertz.xyz' + product.path" :alt="product.name"></figure>
                                        </div>
                                        <div class="card-body">
                                            <h5 class="py-2">{{product.name}}</h5>
                                            <p class="mb-3">INR {{product.price}}</p>
                                            <div class="cartbtn">
                                                <!-- <button class="letsbtn" @click="addCart(product)">
                                                {{ loading ? "Adding..." : "Add to cart" }}
                                                    Add to cart
                                                </button> -->
                                            </div>
                                        </div>
                                    </div>
                                </router-link>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </section>
        
    </div>
</template>

<script>
// import Breadcumb from '../reuseable/Breadcumb.vue'
import ProductSidebar from '../products/ProductSidebar.vue'
import axios from 'axios'
export default {
    name:'CategoryBlog',
    components:{
        ProductSidebar
    },
    
    data(){
        return{
            title:'',
            products:[],
            category:[],
            
        }
    },
    computed:{
        searchItem(){
            return this.products.length == 0
        }
    },
    watch:{
        $route(){
            this.fetchAllProducts();
            this.fetchCategory();
        }
    },
    methods:{
        fetchAllProducts() {
            axios.get(`https://shopx-api.betamxpertz.xyz/api/product/category/${this.$route.params.id}`)
            .then((res)=> {
                this.products = res.data
            });          
            
        },
        fetchCategory() {
            axios.get(`https://shopx-api.betamxpertz.xyz/api/product_categories/${this.$route.params.id}`)
            .then((res)=> {
                this.category = res.data
                this.title = res.data.category_name
            });          
            
        },
    },
    mounted(){
        this.fetchAllProducts();
        this.fetchCategory();
        // document.title = 'Category Blogs You Can Follow | Creative Web X';
    }
}
</script>