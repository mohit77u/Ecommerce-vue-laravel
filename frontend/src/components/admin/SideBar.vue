<template>
    <div>
        <div class="notauth text-center" v-if="!isAdmin">
            <div class="text-spin">
                <div class="spinner-border text-danger" role="status"></div>
                <div class="text-center" v-if="isUser">
                    <h4 class="my-5">You are not Authorize to access this page !!</h4>
                    <router-link  class="letsbtn" to='/'>Go to Homepage</router-link>
                </div>
            </div>
        </div>
        <div class="sidemain">
            <h4 class="text-center my-5">Hi {{user.name}}!</h4>
            <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                <router-link class="nav-link" to="/dashboard/admin" >Dashboard</router-link>
                <router-link class="nav-link" to="/dashboard/products">Products</router-link>
                <router-link class="nav-link" to="/dashboard/products/add-category">Product Category</router-link>
                <router-link class="nav-link" to="/dashboard/blog/all-blog">Blogs</router-link>
                <router-link class="nav-link" to="/dashboard/blog/add-category">Blog Category</router-link>
            </div>
        </div>
    </div>
</template>
<script>
import axios from 'axios'
export default {
    name: 'SideBar',
    data(){
        return{
             user: [],
             subMenu: false,
        }
    },
    computed:{
        isAdmin(){
            return this.user.role == 'admin'
        },
        isUser(){
            return this.user.role == 'user'
        },
    },
    methods:{
        getUser(){
            axios.get('https://shopx-api.betamxpertz.xyz/api/user',{
                headers:{
                    Authorization: 'Bearer ' + localStorage.getItem('token')
                }
            })
            .then(res=>{
                this.user = res.data
            })
        }
    },
    mounted() {
        this.getUser();
    },
}
</script>