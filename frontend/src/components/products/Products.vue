<template>
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
</template>
<script>
import axios from 'axios'
export default {
    name:'Product',
    data(){
        return{
            products:[],
            loading: false,
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
    },
    mounted(){
        this.fetchProducts();
    }
}
</script>