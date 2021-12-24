<template>
    <div>
        <section class="dashboard">
            <div class="container-fluid">
                 <div class="main-content">
                    <h2 class="text-center my-5">Admin(Update Product Details)</h2>
                    <div class="add-jobs">
                        <form class="px-5 py-5" v-on:submit.prevent="updateProduct">
                            <h5>Product Details</h5>
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Product Name</label>
                                        <input type="text" placeholder="Product Name" class="form-control" v-model="product.name">
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Slug</label>
                                        <input type="text" placeholder="Slug" class="form-control" v-model="product.slug">
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Price</label>
                                        <input type="text" placeholder="Price" class="form-control" v-model="product.price">
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Short Description</label>
                                        <textarea placeholder="Short Description" class="form-control" v-model="product.short_description"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Description</label>
                                        <textarea placeholder="Description" class="form-control" v-model="product.description"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Available Quantity</label>
                                        <input type="text" placeholder="Available Quantity" class="form-control" v-model="product.quantity">
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                         <label class="form-label">Category</label>
                                        <select class="form-select" v-model="product.category">
                                            <option disabled>Choose product category</option>
                                            <option :value="category.id" v-for="(category,index) in allcategory" :key="index">{{category.category_name}}</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <button type="submit" class="letsbtn">{{ loading ? "Updating..." : "Update Product" }}</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
</template>
<script>
import axios from 'axios'
export default {
    name: 'EditProduct',
    data(){
        return{
            loading: false,
            product: {
                name: '',
                price: '',
                quantity: '',
                short_description: '',
                description: '',
                category: '',
            },
            allcategory:[],
        }
    },
    created(){
        axios.get(`https://shopx-api.betamxpertz.xyz/api/products/${this.$route.params.id}`)
        .then((res)=> {
            this.product = res.data
        });
    },
    methods: {
        updateProduct(){
           this.loading= true
            axios.put(`https://shopx-api.betamxpertz.xyz/api/products/${this.$route.params.id}`,this.product)
            .then(()=>{
                this.loading= false
                this.$swal({
                    title: 'Succesfully Product Updated !!',
                    icon: 'success'
                });
                this.$router.push('/dashboard/products')
            }).catch(()=>{
                this.loading= false
                this.$swal({
                    title: 'Error Occurred !!',
                    icon: 'error'
                });
            })
        },
        fetchAllCategory(){
            axios.get('https://shopx-api.betamxpertz.xyz/api/product_categories')
            .then(res=>{
                this.allcategory = res.data
            }).catch(err=>{
                console.log(err)
            })
        },
    },
    mounted(){
        this.fetchAllCategory();
    }
}
</script>