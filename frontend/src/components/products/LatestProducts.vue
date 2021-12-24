<template>
    <div class="row py-2 single-product">
        <div class="col-sm-2" v-for="(product,index) in products.slice(0,6)" :key="index">
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
</template>
<script>
import axios from 'axios'
export default {
    name:'Product',
    data(){
        return{
            products:[],
            loading: false,
            user:[],
            addcart:{
                user_id:'',
                product:'',
                product_id:'',
                price:'',
                image:'',
                quantity:'1',
                available_quantity: '',
            }
        }
    },
    created(){
        
    },
    methods:{
        fetchProducts(){
            axios.get('https://shopx-api.betamxpertz.xyz/api/products')
            .then(res=>{
                this.products = res.data
            })
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
                this.addcart.quantity = '1'
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
                        title: 'Product Already Added on Cart !!',
                        icon: 'error'
                    });
                })
            }
            
        }
    },
    mounted(){
        this.fetchProducts();
        this.fetchUser();
    }
}
</script>