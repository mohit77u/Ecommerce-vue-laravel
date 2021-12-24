<template>
    <div>
        <section class="breadcumb">
            <div class="breadcumb-main">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><router-link class="homelink" to="/">Home</router-link></li>
                    <i class="fas fa-chevron-right"></i>
                    <li class="breadcrumb-item active">{{title}}</li>
                </ol>
                <h1>{{title}}</h1>
            </div>
        </section>

        <section class="about contact">
            <div class="container">
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-5" data-aos="fade-right" data-aos-delay="600">
                        <div class="section-heading">
                            <h6>Contact us</h6>
                            <h2>Connect today</h2>
                            <div class="left-contact mt-3">
                                <ul>
                                    <li><i class="fas fa-home"></i>New York, London, 123456</li>
                                    <li><i class="fas fa-envelope"></i>info@theshopx.com</li>
                                    <li><i class="fas fa-home"></i>+91 8269584409</li>
                                </ul>
                                <div class="social mt-5">
                                    <h2 class="mb-4">Follow us</h2>
                                    <a href="#" target="blank"><i class="fab fa-facebook-f"></i></a>
                                    <a href="#" target="blank"><i class="fab fa-twitter"></i></a>
                                    <a href="#" target="blank"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-5"  data-aos="fade-left" data-aos-delay="800">
                        <div class="about-form">
                            <h3>Feel free to connect with us for any requirement</h3> 
                            <ContactForm/>
                        </div>
                    </div>
                    <div class="col-sm-1"></div>
                </div>
            </div>
        </section>
    </div>
</template>

<script>
import ContactForm from '../reusable/ContactForm.vue'
export default {
    name:'Contact',
    components:{
        ContactForm
    },
    data(){
        return{
            title:'Contact'
        }
    },

}
</script>