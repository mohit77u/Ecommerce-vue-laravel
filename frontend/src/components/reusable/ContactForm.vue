<template>
    <div class="form">
        <form @submit.prevent="sendEmail">
            <div class="form-group">
                <label>Full Name</label>
                <input type="text" class="form-control" placeholder="Full Name" v-model="name" name="name" required>
            </div>
            <div class="form-group">
                <label>Email</label>
                <input type="email" class="form-control" placeholder="Email" v-model="email" name="email" required>
            </div>
            <div class="form-group">
                <label>Message</label>
                <input type="text" class="form-control" placeholder="Message" v-model="message" name="message" required>
            </div>
            <div class="form-group">
                <button @click="checkForm" class="letsbtn w-100">Get free quote</button>
            </div>
            <div class="alert alert-danger my-3"  role="alert" v-if="error">
                {{error}}
            </div>
        </form>
    </div>
</template>
<script>

import emailjs from 'emailjs-com';
export default {
    name: 'ContactForm',
    data(){
        return{
            name: '',
            email: '',
            message: '',
            error:'',
        }
    },
    methods: {
        sendEmail(e) {
            try {
                emailjs.sendForm("service_4dudb4e","template_1mbnauj", e.target, 'user_lT8TU7AOHPlGyZ06pCJ4H', {
                    name: this.name,
                    email: this.email,
                    message: this.meessage,
                })
                this.error = ''
                this.$swal({
                    title: 'Your details submit succesfully, We will contact you shortly...',
                    icon: 'success'
                });
            } catch (error) {
                console.log(error)
                this.$swal({
                    title: 'Error Occurred !!!',
                    icon: 'error'
                });
            }
            this.name = ''
            this.email = ''
            this.message = ''
        },
        checkForm(){
            if(!this.name && !this.email && !this.message){
                this.error = 'Please check above fields !!'
            }
        }
    },
}
</script>
