<template>
    <div>
        <section class="dashboard">
            <div class="container-fluid">
                <div class="main-content">
                    <div class="all-jobs" v-if="blogs">
                        <h2 class="text-center my-5">Admin(All Blog)</h2>
                        <div class="add-new-btn mb-3">
                            <router-link class="btn btn-outline-success" to="/dashboard/blog/add-blog" >Add New Blog</router-link>
                        </div>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>SI.NO</th>
                                        <th>Title</th>
                                        <th>Slug</th>
                                        <th>Image</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr v-for="(blog,index) in blogs" :key="index">
                                        <td>{{ index+1 }}</td>
                                        <td>{{ blog.title }}</td>
                                        <td>{{ blog.slug }}</td>
                                        <td><img :src="'https://shopx-api.betamxpertz.xyz' + blog.featured_image" :alt="blog.title"></td>
                                        <td><router-link class="btn btn-outline-success" :to="{name: 'editBlog', params: {id: blog.id, url: blog.slug,}}">Edit</router-link></td>
                                        <td><button class="btn btn-outline-danger" @click="deleteBlog(blog.id)">Delete</button></td>
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
    name: 'Dashboard',
    data(){
        return{
            blogs: [],
        }
    },
    methods: {
        fetchAllBlogs() {
            axios.get('https://shopx-api.betamxpertz.xyz/api/blogs')
            .then(response => {
                this.blogs = response.data
            })
            .catch(error=>{
                console.log(error)
            })           
            
        },
        deleteBlog(id) {
            axios.delete(`https://shopx-api.betamxpertz.xyz/api/blogs/${id}`)
            .then(() => {
                this.fetchAllBlogs();
                this.$swal({
                    title: 'Succesfully Blog Deleted !!',
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
        this.fetchAllBlogs();
        document.title = 'All Blogs created by Creative Web X'
    },
    
}
</script>