<template>
    <div>
        <section class="dashboard">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-2">
                        <SideBar />
                    </div>
                    <div class="col-sm-10">
                        <router-view/>
                    </div>
                </div>
            </div>
        </section>
    </div>
</template>
<script>
    import SideBar from './SideBar.vue'
    export default {
        name: 'AdminDashboard',
        components: {
            SideBar
        },
        data(){
            return{
                
            }
        },
        beforeCreate () {
            if(this.$store.state.token == null) {
                this.$router.push('/login')
            } else this.$router.push('/dashboard/admin')
        }
        
    }
</script>
