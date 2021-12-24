<template>
    <div>
        <section class="dashboard">
            <div class="container-fluid">
                <div class="main-content">
                    <h2 class="text-center my-5">Admin(Update blog)</h2>
                    <div class="add-jobs">
                        <form @submit.prevent="updateBlog">
                            <h5>Blog Details</h5>
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Blog Title</label>
                                        <input type="text" placeholder="Blog Title" class="form-control" v-model="blog.title">
                                    </div>
                                </div>
                                 <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Slug</label>
                                        <input type="text" placeholder="Slug" class="form-control" v-model="blog.slug">
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Category</label>
                                        <select class="form-select" v-model="blog.category_id">
                                            <option disabled>Choose product category</option>
                                            <option :value="category.id" v-for="(category,index) in categories" :key="index">{{category.category_name}}</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Description</label>
                                        <textarea class="form-control" cols="30" rows="8" v-model="blog.description" placeholder="Description"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Heading one</label>
                                        <input type="text" v-model="blog.headingone" class="form-control">
                                        <label class="form-label">Paragraph one</label>
                                        <textarea class="form-control" cols="30" rows="8" v-model="blog.contentone"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Heading two</label>
                                        <input type="text" v-model="blog.headingtwo" class="form-control">
                                        <label class="form-label">Paragraph two</label>
                                        <textarea class="form-control" cols="30" rows="8" v-model="blog.contenttwo"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Heading three</label>
                                        <input type="text" v-model="blog.headingthree" class="form-control">
                                        <label class="form-label">Paragraph three</label>
                                        <textarea class="form-control" cols="30" rows="8" v-model="blog.contentthree"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Heading four</label>
                                        <input type="text" v-model="blog.headingfour" class="form-control">
                                        <label class="form-label">Paragraph four</label>
                                        <textarea class="form-control" cols="30" rows="8" v-model="blog.contentfour"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Heading five</label>
                                        <input type="text" v-model="blog.headingfive" class="form-control">
                                        <label class="form-label">Paragraph five</label>
                                        <textarea class="form-control" cols="30" rows="8" v-model="blog.contentfive"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Heading six</label>
                                        <input type="text" v-model="blog.headingsix" class="form-control">
                                        <label class="form-label">Paragraph six</label>
                                        <textarea class="form-control" cols="30" rows="8" v-model="blog.contentsix"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <button class="letsbtn">{{ loading ? "Updating..." : "Update Blog" }}</button>
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
import axios from 'axios'
export default {
    name: 'EditBlog',
    data(){
        return{
            loading: false,
            categories:[],
            blog: {
                title: '',
                slug: '',
                excerpt: '',
                content: '',
                category_id: '',
            },
        }
    },
    created(){
        axios.get(`https://shopx-api.betamxpertz.xyz/api/blogs/${this.$route.params.id}`)
        .then((res)=> {
            this.blog = res.data
        });
    },
    methods: {
        updateBlog(){
           this.loading= true
            axios.put(`https://shopx-api.betamxpertz.xyz/api/blogs/${this.$route.params.id}`,this.blog)
            .then(()=>{
                this.loading= false
                this.$swal({
                    title: 'Succesfully Blog Updated !!',
                    icon: 'success'
                });
                this.$router.push('/dashboard/all-blog')
            }).catch(()=>{
                this.loading= false
                this.$swal({
                    title: 'Error Occurred !!',
                    icon: 'error'
                });
            })
        },
        fetchAllCategories() {
            axios.get('https://shopx-api.betamxpertz.xyz/api/blog_categories')
            .then(res => {
                this.categories = res.data
            })
            .catch(error=>{
                console.log(error)
            })           
            
        },
    },
    mounted(){
        this.fetchAllCategories();
        document.title = 'Update Blog created by Creative Web X'
    }
    
}
</script>