<template>
    <div>
        <section class="shopbanner">
            <div class="container">
                <div class="breadcumb-main">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><router-link class="homelink" to="/shop">Shop</router-link></li>
                        <i class="fas fa-chevron-right"></i>
                        <li class="breadcrumb-item active">{{product.name}}</li>
                    </ol>
                </div>
                <h1 class="text-center">{{product.name}}</h1>                
            </div>
        </section>

        <section class="singleproduct py-5 mt-5">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="text-center">
                            <img :src="'https://shopx-api.betamxpertz.xyz' + product.path" :alt="product.name">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="single">
                            <h2>{{product.name}}</h2>
                            <p>INR {{product.price}}</p>
                            <p>{{product.short_description}}</p>
                            <div class="cartsinglebtn my-3">
                                <input type="number" class="form-control" min="1" :max="product.quantity" v-model="addcart.quantity">
                                <button class="letsbtn" @click="addCart(product)">
                                    <i class="fas fa-shopping-bag"></i> {{ loading ? "Adding..." : "Add to cart" }}
                                </button>
                            </div>
                            <div class="description my-5">
                                <h4>Description</h4>
                                <p>{{product.description}}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="products py-5">
            <div class="container">
                <h2 class="my-3">Latest Products</h2>
                <LatestProducts/>
            </div>
        </section>
    </div>
</template>

<script>
import LatestProducts from '../products/LatestProducts.vue'
import axios from 'axios'
export default {
    name:'SingleProduct',
    components:{
        LatestProducts
    },
    data(){
        return{
            product:[],
            loading: false,
            addcart:{
                user_id:'',
                product:'',
                product_id:'',
                price:'',
                image:'',
                quantity:'1',
                available_quantity: '',
            },
            user:[],
        }
    },
   watch:{
       $route(){
           this.GetProduct();
       }
   },
    methods:{
        GetProduct(){
            axios.get(`https://shopx-api.betamxpertz.xyz/api/products/${this.$route.params.id}`)
            .then((res)=> {
                this.product = res.data
            });
        },
        fetchUser(){
            axios.get('https://shopx-api.betamxpertz.xyz/api/user',{
                headers:{
                    Authorization: 'Bearer ' + localStorage.getItem('token')
                }
            })
            .then(res=>{
                this.user = res.data
            })
        },
        addCart(product){
            if(this.$store.state.token == null){
                this.$router.push('/login')
            }else if(this.$store.state.token){
                this.loading = true
                this.addcart.user_id = this.user.id
                this.addcart.product_id = product.id
                this.addcart.product = product.name
                this.addcart.image = product.path
                this.addcart.price = product.price
                this.addcart.available_quantity = product.quantity
                axios.post('https://shopx-api.betamxpertz.xyz/api/addtocart', this.addcart)
                .then(res=>{
                    console.log(res);
                    this.loading = false
                    this.$swal({
                        title: 'Added to Cart !!',
                        icon: 'success'
                    });
                }).catch(error=>{
                    console.log(error)
                    this.$swal({
                        title: 'Error occurred !!',
                        icon: 'error'
                    });
                })
            }
            
        }
    },
    mounted(){
        this.GetProduct();
        this.fetchUser();
    }
}
</script>