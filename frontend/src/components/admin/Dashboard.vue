<template>
    <div>
        <div class="main-content">
            <div class="all-jobs" v-if="users">
                <h2 class="text-center my-2">Admin Details</h2>
                <div class="add-new-btn mb-3">
                    <router-link class="btn btn-outline-success" to="/dashboard/add-admin" >Add New Admin</router-link>
                </div>
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>SI.NO</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Role</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="(user,index) in users" :key="index">
                                <td>{{ index+1 }}</td>
                                <td>{{ user.name }}</td>
                                <td>{{ user.email }}</td>
                                <td>{{ user.role }}</td>
                                <td><router-link class="btn btn-outline-success" :to="{name: 'update', params: {id: user.id}}">Edit</router-link></td>
                                <td><button class="btn btn-outline-danger" @click="deleteUser(user.id)">Delete</button></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="all-category" v-if="allcategory">
                    <h2 class="text-center my-5">All Product Category</h2>
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>SI.NO</th>
                                    <th>Category Name</th>
                                    <th>Image</th>
                                    <th>Delete</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="(category,index) in allcategory" :key="index">
                                    <td>{{ index+1 }}</td>
                                    <td>{{ category.category_name }}</td>
                                    <td><img v-bind:src="'https://shopx-api.betamxpertz.xyz' + category.image" :alt="category.category_name"></td>
                                    <td><button class="btn btn-outline-danger" @click="deleteCategory(category.id)">Delete</button></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import axios from 'axios'
export default {
    name:'Dashboard',
    data(){
        return{
            users: [],
            allcategory:[],
        }
    },
    methods: {
        fetchAllUsers() {
            axios.get('https://shopx-api.betamxpertz.xyz/api/users', this.users)
            .then(response => this.users = response.data)
            .catch(error=>{
                console.log(error)
            })           
            
        },
        deleteUser(id) {
            axios.post(`https://shopx-api.betamxpertz.xyz/api/delete/${id}`)
            .then(() => {
                this.fetchAllUsers();
                this.$swal({
                    title: 'Succesfully User Deleted !!',
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
        fetchAllCategory(){
            axios.get('https://shopx-api.betamxpertz.xyz/api/product_categories')
            .then(res=>{
                this.allcategory = res.data
            }).catch(err=>{
                console.log(err)
            })
        },
        deleteCategory(id) {
            axios.delete(`https://shopx-api.betamxpertz.xyz/api/product_categories/${id}`)
            .then(() => {
                this.fetchAllCategory();
                this.$swal({
                    title: 'Succesfully Product Category Deleted !!',
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
        this.fetchAllUsers();
        this.fetchAllCategory();
    },
}
</script>