<template>
    <div>
        <section class="dashboard">
            <div class="container-fluid">
                <div class="main-content">
                    <h2 class="text-center my-5">Admin(Add new blog)</h2>
                    <div class="add-jobs">
                        <form @submit.prevent="handleSubmit">
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
                                        <label class="form-label">Featured Image</label>
                                        <input type="file" class="form-control" v-on:change="onChange">
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
                                        <input type="text" v-model="blog.headingone" class="form-control" placeholder="Heading one">
                                        <label class="form-label">Paragraph one</label>
                                        <textarea class="form-control" cols="30" rows="8" v-model="blog.contentone" placeholder="Paragraph one"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Heading two</label>
                                        <input type="text" v-model="blog.headingtwo" class="form-control" placeholder="Heading two">
                                        <label class="form-label">Paragraph two</label>
                                        <textarea class="form-control" cols="30" rows="8" v-model="blog.contenttwo" placeholder="Paragraph two"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Heading three</label>
                                        <input type="text" v-model="blog.headingthree" class="form-control" placeholder="Heading three">
                                        <label class="form-label">Paragraph three</label>
                                        <textarea class="form-control" cols="30" rows="8" v-model="blog.contentthree" placeholder="Paragraph three"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Heading four</label>
                                        <input type="text" v-model="blog.headingfour" class="form-control" placeholder="Heading four">
                                        <label class="form-label">Paragraph four</label>
                                        <textarea class="form-control" cols="30" rows="8" v-model="blog.contentfour" placeholder="Paragraph four"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Heading five</label>
                                        <input type="text" v-model="blog.headingfive" class="form-control" placeholder="Heading five">
                                        <label class="form-label">Paragraph five</label>
                                        <textarea class="form-control" cols="30" rows="8" v-model="blog.contentfive"  placeholder="Paragraph five"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="form-label">Heading six</label>
                                        <input type="text" v-model="blog.headingsix" class="form-control" placeholder="Heading six">
                                        <label class="form-label">Paragraph six</label>
                                        <textarea class="form-control" cols="30" rows="8" v-model="blog.contentsix" placeholder="Paragraph six"></textarea>
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
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <button class="letsbtn">{{ loading ? "Adding..." : "Add Blog" }}</button>
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
    name: 'Dashboard',
    data(){
        return{
            loading: false,
            categories:[],
            blog: {
                title: '',
                slug: '',
                description: '',
                headingone: '',
                contentone: '',
                headingtwo: '',
                contenttwo: '',
                headingthree: '',
                contentthree: '',
                headingfour: '',
                contentfour: '',
                headingfive: '',
                contentfive: '',
                headingsix: '',
                contentsix: '',
                category_id: '',
                file: '',
            },
        }
    },
    methods: {
        onChange(e) {
            this.blog.file = e.target.files[0];
            console.log(e)
        },
        handleSubmit(){
            this.loading= true
            const config = {headers: {'content-type': 'multipart/form-data'}}

            let data = new FormData();
            data.append('title', this.blog.title);
            data.append('slug', this.blog.slug);
            data.append('file', this.blog.file);
            data.append('category_id', this.blog.category_id);
            data.append('description', this.blog.description);
            data.append('headingone', this.blog.headingone);
            data.append('contentone', this.blog.contentone);
            data.append('headingtwo', this.blog.headingtwo);
            data.append('contenttwo', this.blog.contenttwo);
            data.append('headingthree', this.blog.headingthree);
            data.append('contentthree', this.blog.contentthree);
            data.append('headingfour', this.blog.headingfour);
            data.append('contentfour', this.blog.contentfour);
            data.append('headingfive', this.blog.headingfive);
            data.append('contentfive', this.blog.contentfive);
            data.append('headingsix', this.blog.headingsix);
            data.append('contentsix', this.blog.contentsix);
            axios.post('https://shopx-api.betamxpertz.xyz/api/blogs', data,config)
            .then(()=>{
                this.loading= false
                this.$swal({
                    title: 'Succesfully Blog Created !!',
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
        document.title = 'Add New Blog on Creative Web X'
    }
    
}
</script>