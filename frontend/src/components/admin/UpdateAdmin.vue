<template>
    <div>
        <section class="dashboard">
            <div class="container-fluid">
                <div class="main-content">
                    <h2 class="text-center my-5">Admin(Update Admin Details)</h2>
                    <div class="">
                        <form class="px-5 py-5" v-on:submit.prevent="updateUser">
                            <div class="mb-3">
                                <label class="form-label">Full Name</label>
                                <input disabled type="text" placeholder="Full Name" class="form-control" v-model="registration.name">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Email address</label>
                                <input disabled type="email" placeholder="Email address" class="form-control" v-model="registration.email">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">User Role</label>
                                <select class="form-select" aria-label="Default select example" v-model="registration.role">
                                    <option selected disabled>Choose User Role</option>
                                    <option value="admin">Admin</option>
                                    <option value="user">User</option>
                                    <option value="student">Student</option>
                                </select>
                            </div>
                            <button type="submit" class="btn letsbtn w-100">{{ loading ? "Updating..." : "Update User" }}</button>
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
    name: 'Dashboard',
    data(){
        return{
            loading: false,
            registration: {
                role: '',
            }
        }
    },
    created(){
        axios.get(`https://shopx-api.betamxpertz.xyz/api/user/${this.$route.params.id}`)
        .then((res)=> {
            this.registration = res.data
        });
    },
    methods: {
       updateUser(){
           this.loading= true
            axios.post(`https://shopx-api.betamxpertz.xyz/api/update/${this.$route.params.id}`,this.registration)
            .then(()=>{
                this.loading= false
                this.$swal({
                    title: 'Succesfully User Updated !!',
                    icon: 'success'
                });
                this.$router.push('/admin')
            }).catch(()=>{
                this.loading= false
                this.$swal({
                    title: 'Error Occurred !!',
                    icon: 'error'
                });
            })
        }
    },
}
</script>