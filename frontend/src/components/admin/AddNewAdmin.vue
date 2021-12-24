<template>
    <div>
        <section class="dashboard">
            <div class="container-fluid">
                 <div class="main-content">
                    <h2 class="text-center my-5">Admin(Add new Admin)</h2>
                    <div class="add-jobs">
                        <form @submit.prevent="handleSubmit">
                            <h5>Admin Details</h5>
                            <div class="row">
                                <div class="col-sm-5">
                                    <div class="form-group">
                                        <label class="form-label">Full Name</label>
                                        <input type="text" placeholder="Full Name" class="form-control" v-model="registration.name">
                                    </div>
                                </div>
                                <div class="col-sm-5">
                                    <div class="form-group">
                                        <label class="form-label">Email address</label>
                                        <input type="email" placeholder="Email address" class="form-control" v-model="registration.email">
                                    </div>
                                </div>
                                <div class="col-sm-5">
                                    <div class="form-group">
                                        <label class="form-label">Password</label>
                                        <input type="password" placeholder="Password" class="form-control" v-model="registration.password">
                                    </div>
                                </div>
                                <div class="col-sm-5">
                                    <div class="form-group">
                                        <label class="form-label">Password Confirmation</label>
                                        <input type="password" placeholder="Password Confirmation" class="form-control" v-model="registration.password_confirmation">
                                    </div>
                                </div>
                                <div class="col-sm-5">
                                    <div class="form-group">
                                        <label class="form-label">User Role</label>
                                        <select class="form-select" aria-label="Default select example" v-model="registration.role">
                                            <option disabled selected>Choose User Role</option>
                                            <option value="admin">Admin</option>
                                            <option value="user">User</option>
                                            <option value="student">Student</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-5">
                                    <div class="form-group">
                                        <button type="submit" class="letsbtn">{{ loading ? "Creating..." : "Create" }}</button>
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

export default {
    name: 'Dashboard',
    data(){
        return{
            loading: false,
            registration: {
                name: '',
                email: '',
                password: '',
                password_confirmation: '',
                role: '',
            }
        }
    },
    methods: {
        handleSubmit(){
            this.loading= true
            this.$store.dispatch('RegisterAdmin', this.registration)
            .then(()=>{
                this.loading= false
                this.$swal({
                    title: 'Succesfully Admin Created !!',
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
        },
    },
}
</script>