import { createRouter, createWebHistory } from 'vue-router'

import Home from '../components/pages/Home.vue'
import Contact from '../components/pages/Contact.vue'
import Register from '../components/auth/Register.vue'
import Login from '../components/auth/Login.vue'
import ForgotPassword from '../components/auth/ForgotPassword'
import ResetPassword from '../components/auth/ResetPassword'
import AddNewAdmin from '../components/admin/AddNewAdmin'
import UpdateAdmin from '../components/admin/UpdateAdmin'
import AdminDashboard from '../components/admin/AdminDashboard'
import Dashboard from '../components/admin/Dashboard'
import UserDashboard from '../components/user/UserDashboard'
import AddProduct from '../components/admin/products/AddProduct'
import AllProduct from '../components/admin/products/AllProduct'
import EditProduct from '../components/admin/products/EditProduct'
import ProductCategory from '../components/admin/products/Category'
import AllBlog from '../components/admin/AllBlog'
import AddNewBlog from '../components/admin/AddNewBlog'
import EditBlog from '../components/admin/EditBlog'
import AddCategory from '../components/admin/AddCategory'

import Cart from '../components/products/Cart'
import Checkout from '../components/products/Checkout'
import Shop from '../components/pages/Shop'
import SingleProduct from '../components/products/SingleProduct'
import ThankYou from '../components/products/ThankYou'
import CategoryProduct from '../components/products/CategoryProduct.vue'
import SearchProduct from '../components/products/SearchProduct.vue'

import Blog from '../components/blog/Blog.vue'
import SingleBlog from '../components/blog/SingleBlog.vue'
import CategoryBlog from '../components/blog/CategoryBlog.vue'
import SearchBlog from '../components/blog/SearchBlog.vue'

import NotFound from '../components/parts/NotFound'



const routes = [
  { path: '/', name: 'Home', component: Home },
  { path: '/contact', name: 'Contact', component: Contact },
  { path: '/register', name: 'Register', component: Register },
  { path: '/login', name: 'Login', component: Login },
  { path: '/forgot-password', component: ForgotPassword},
  { path: '/reset-password/:token', component: ResetPassword},
  { 
    path: '/dashboard',
    component: AdminDashboard,
    children: [
      {path: 'admin', component: Dashboard},
      {path: 'add-admin', component: AddNewAdmin},
      { path: 'update-user/:id', name: 'update', component: UpdateAdmin},
      { path: 'products', component: AllProduct},
      { path: 'products/add-product', component: AddProduct},
      { path: 'products/edit-product/:id', name: 'EditProduct', component: EditProduct},
      { path: 'products/add-category', component: ProductCategory},
      {path: 'blog/add-blog', component: AddNewBlog},
      {path: 'blog/add-category', component: AddCategory},
      { path: 'blog/all-blog', component: AllBlog},
      { path: '/blog/edit-blog/:id/:url', name: 'editBlog', component: EditBlog},
    ]
  },  
  { path: '/user', component: UserDashboard},
  
  { path: '/cart', component: Cart},
  { path: '/checkout', component: Checkout},
  { path: '/shop', component: Shop},
  { path: '/shop/products/:id/', name: 'SingleProduct', component: SingleProduct },
  { path: '/thankyou', component: ThankYou},
  { path: '/product/category/:id', name: 'CategoryProduct', component: CategoryProduct },
  { path: '/product/search/q=:search', name: 'SearchProduct', component: SearchProduct },
  
  { path: '/blog', name: 'Blog', component: Blog },
  { path: '/blog/:id/:slug', name: 'SingleBlog', component: SingleBlog },
  { path: '/blog/category/:id/:slug', name: 'CategoryBlog', component: CategoryBlog },
  { path: '/blog/search/q=:search', name: 'SearchBlog', component: SearchBlog },
  
  
  { path: "/:catchAll(.*)", component: NotFound },
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
  scrollBehavior() {
    window.scrollTo(0,0);
  }
})

export default router
