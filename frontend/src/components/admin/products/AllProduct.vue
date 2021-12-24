<template>
    <div>
        <section class="dashboard">
            <div class="container-fluid">
                <div class="main-content">
                    <div class="all-jobs" v-if="products">
                        <h2 class="text-center my-5">Admin(All Products)</h2>
                        <div class="add-new-btn mb-3">
                            <router-link class="btn btn-outline-success" to="/dashboard/products/add-product" >Add New Poduct</router-link>
                        </div>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>SI.NO</th>
                                        <th>Products Name</th>
                                        <th>Image</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Description</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr v-for="(product,index) in products" :key="index">
                                        <td>{{ index+1 }}</td>
                                        <td>{{ product.name }}</td>
                                        <td><img v-bind:src="'https://shopx-api.betamxpertz.xyz' + product.path" :alt="product.name"></td>
                                        <td>{{ product.price }}</td>
                                        <td>{{ product.quantity }}</td>
                                        <td>{{ product.description }}</td>
                                        <td><router-link class="btn btn-outline-success" :to="{name: 'EditProduct', params: {id: product.id,}}">Edit</router-link></td>
                                        <td><button class="btn btn-outline-danger" @click="deleteProduct(product.id)">Delete</button></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</template>
<script>
import axios from 'axios'
export default {
    name: 'AllProducts',
    data(){
        return{
            products: [],
        }
    },
    methods: {
        fetchAllProducts() {
            axios.get('https://shopx-api.betamxpertz.xyz/api/products', this.products)
            .then(response => this.products = response.data)
            .catch(error=>{
                console.log(error)
            })           
            
        },
        deleteProduct(id) {
            axios.delete(`https://shopx-api.betamxpertz.xyz/api/products/${id}`)
            .then(() => {
                this.fetchAllProducts();
                this.$swal({
                    title: 'Succesfully Product Deleted !!',
                    icon: 'success'
                });
            })
            .catch(()=>{
                this.$swal({
                    title: 'Error occurred !!',
                    icon: 'error'
                });
            })           
            
        },
    },
    mounted() {
        this.fetchAllProducts()
    },
    
}
</script>