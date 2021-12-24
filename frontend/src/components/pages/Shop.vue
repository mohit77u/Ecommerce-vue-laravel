<template>
    <div>
        <section class="breadcumb">
            <div class="breadcumb-main">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><router-link class="homelink" to="/">Home</router-link></li>
                    <i class="fas fa-chevron-right"></i>
                    <li class="breadcrumb-item active">Shop</li>
                </ol>
                <h1>Shop</h1>
            </div>
        </section>

        <section class="shop-products products">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="sidebar">
                            <ProductSidebar/>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <Product/>
                        
                    </div>
                </div>
                
            </div>
        </section>
    </div>
</template>

<script>
import Product from '../products/Products.vue'
import ProductSidebar from '../products/ProductSidebar.vue'
export default {
    name:'Shop',
    components:{
        Product,ProductSidebar,
    },
    data(){
        return{
            page: 1,
            perPage: 9,
            pages: [],
        }
    },
    methods:{
        setPages () {
            let numberOfPages = Math.ceil(this.products.length / this.perPage);
            for (let index = 1; index <= numberOfPages; index++) {
                this.pages.push(index);
            }
        },
    },
    watch: {
        products() {
            this.setPages();
        }
    }
}
</script>