<template>
    <div class="sidebar-main">
       <div class="search">
            <h4>Search Products</h4>
            <form :action="'/product/search/q=' + search">
                <div class="input-group flex-nowrap">
                    <input type="text" v-model="search" class="form-control" placeholder="Search">
                    <span class="input-group-text"  type ="submit" id="addon-wrapping"><i class="fas fa-search"></i></span>
                </div>
            </form>
        </div>
        <div class="category">
            <h3>Category</h3>
            <div class="category-inner">
                <ul>
                    <li v-for="(category,index) in categories" :key="index"><router-link class="sidetexticon" :to="{name:'CategoryProduct', params:{id:category.id}}">{{category.category_name}}</router-link> <i class="fas fa-angle-double-right"></i></li>
                </ul>
            </div>
        </div>
    </div>
</template>

<script>
import axios from 'axios'
export default {
    name:'ProductSidebar',
    data(){
        return{
            categories:[],
            search:''
        }
    },
    methods:{
        fetchCategory(){
            axios.get('https://shopx-api.betamxpertz.xyz/api/product_categories')
            .then(res=>{
                this.categories = res.data
            }).catch(()=>{

            })
        },
    },
    mounted(){
        this.fetchCategory();
    }
}
</script>