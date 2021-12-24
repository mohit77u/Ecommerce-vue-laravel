<template>
    <div>
        <section class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3" v-for="(footer, index) in footerLinks" :key="index">
                        <div class="footer-content">
                            <h5>{{footer.title}}</h5>
                            <ul>
                                <li v-for="(link, index) in footer.links" :key="index">
                                    <router-link v-bind:to= link.url  class="footer-links">{{link.name}}</router-link>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="footer-content">
                            <h5 class="mb-3">Contact us</h5>
                            <div class="footer-last">
                                <ul>
                                    <li><a href="#"><i class="fas fa-map-marker-alt"></i>New York, London, 123456</a></li>
                                    <li><a href="#"><i class="fas fa-envelope"></i>info@theshopx.com</a></li>
                                    <li><a href="#"><i class="fas fa-phone"></i>+91 8269584009</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="footer-bottom">
                            <p>The Shop X @2021 All Rights Reserved.</p>
                            <img src="/images/payment.png" alt="payment">
                        </div>
                    </div>
                </div>
                <a href="#" :class="{ normalback: scrollPosition < 300, backtotop: scrollPosition > 300 }" data-aos="fade-left" data-aos-delay="200"><i class="fas fa-long-arrow-alt-up"></i></a>
            </div>
        </section>
        

    </div>
</template>
<script>
export default {
    name:'Footer',
    data(){
        return{
            scrollPosition: null,
            footerLinks: [
                { 
                    title: 'Who we are',
                    links: [
                        {name: 'Home', url:'/'},
                        {name: 'Blog', url:'/blog'},
                        {name: 'Shop', url:'/shop'},
                        {name: 'Contact us', url:'/contact'},
                    ],
                },
                { 
                    title: 'Customer Service',
                    links: [
                        {name: 'Terms and Condtions', url:'#'},
                        {name: 'Delivery Information', url:'#'},
                        {name: 'Privacy Policy', url:'#'},
                        {name: 'Refund Policy', url:'#'},
                    ],
                },
                { 
                    title: 'Product categories',
                    links: [
                        {name: 'Mobiles', url:'/product/category/5'},
                        {name: 'Shoes', url:'/product/category/6'},
                        {name: 'Shirts', url:'/product/category/7'},
                        {name: 'Electronics', url:'/product/category/8'},
                        {name: 'Home Appliances', url:'/product/category/10'},
                        {name: 'Beauty and toys', url:'/product/category/11'},
                        {name: 'Home care', url:'/product/category/12'},
                        {name: 'Furniture', url:'/product/category/13'},
                    ],
                },
            ],
        }
    },
     methods: {
        updateScroll() {
            this.scrollPosition = window.scrollY;
        },
    },
    mounted() {
        window.addEventListener("scroll", this.updateScroll);
    },
     computed: {
        loggedIn() {
            return this.$store.getters.loggedIn;
        },
    },
}
</script>
