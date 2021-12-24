<template>
    <div>
        <section class="dashboard">
            <div class="container-fluid">
                 <div class="main-content">
                    <h2 class="text-center my-5">Admin(Add Product Category)</h2>
                    <div class="add-jobs">
                        <form @submit.prevent="handleSubmit" enctype="multipart/form-data">
                            <h5>Category Details</h5>
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Category Name</label>
                                        <input type="text" placeholder="Category Name" class="form-control" v-model="category.category_name">
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Slug</label>
                                        <input type="text" placeholder="Slug" class="form-control" v-model="category.slug">
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Featured Image</label>
                                        <input type="file" class="form-control" v-on:change="onChange">
                                    </div>
                                </div>
                                <div class="col-sm-5">
                                    <div class="form-group">
                                        <button type="submit" class="letsbtn">{{ loading ? "Adding..." : "Add Category" }}</button>
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
    name: 'ProductCategory',
    data(){
        return{
            loading: false,
            category: {
                category_name: '',
                file: '',
                slug: '',
            },
            
        }
    },
    methods: {
       onChange(e) {
            this.category.file = e.target.files[0];
            console.log(e)
        },
        handleSubmit(){
            this.loading= true
            const config = {headers: {'content-type': 'multipart/form-data'}}
            let data = new FormData();
            data.append('category_name', this.category.category_name);
            data.append('file', this.category.file);
            data.append('slug', this.category.slug);
            axios.post('https://shopx-api.betamxpertz.xyz/api/product_categories', data,config)
            .then(()=>{
                this.loading= false
                this.$swal({
                    title: 'Succesfully Product Category Created !!',
                    icon: 'success'
                });
            }).catch(()=>{
                this.loading= false
                this.fetchAllCategory();
                this.$swal({
                    title: 'Error Occurred !!',
                    icon: 'error'
                });
            })
        },
        
    },
}
</script>