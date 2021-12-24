<template>
    <div class="cart">
        <div class="container my-5" v-if="!cart">
            <div class="alert alert-info" role="alert">
                There is no product in your cart !!
            </div>
        </div>
        <section class="container">
            <h2 class="text-center my-5">Your Cart</h2>
            <div class="table-responsive">
                <table>
                    <thead>
                        <tr>
                            <th>SI.NO</th>
                            <th>Product Name</th>
                            <th>Image</th>
                            <th>Quantity</th>
                            <th>Price</th>
                            <th>Remove</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="(cart, index) in  carts" :key="index">
                            <td width= '5%'>{{index+1}}</td>
                            <td>{{cart.product}}</td>
                            <td><img v-bind:src="'https://shopx-api.betamxpertz.xyz' + cart.image" :alt="cart.name"></td>
                            <!-- <td><input type="text" readonly class="form-control" v-model="quantity"></td> -->
                            <td width="10%"><input type="number" class="form-control text-center" readonly v-model="cart.quantity"></td>
                            <td width= '15%'>INR {{cart.price}}</td>
                            <td width="5%"><button @click="deleteCart(cart.id)" class="btn btn-danger btn-sm"><i class="fas fa-times"></i></button></td>
                        </tr>
                        <tr>
                            <td colspan="4" class="totalprice">Total Price:</td>
                            <td><strong>INR {{totalprice}}</strong></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="checkoutbtn my-5">
                <router-link to="/" class="letsbtn lets">Go to shopping</router-link>
                <router-link to="/checkout" class="readbtn">Proceed to Checkout</router-link>
            </div>
        </section>
    </div>
</template>
<script>
import axios from 'axios'
export default {
    name:'Cart',
    data(){
        return{
            // cart: '',
            carts:[],
            totalprice:'',
            quantity:'',
            cartupdatedquantity:'',
        }
    },
    computed: {
        cart(){
            return this.carts.length > 0
        }
    },
    methods:{
        fetchCart(){
            axios.get('https://shopx-api.betamxpertz.xyz/api/cart',{
                headers:{
                    Authorization: 'Bearer ' + localStorage.getItem('token')
                }
            })
            .then(res=>{
                
                this.carts = res.data
                let price = this.carts.reduce((totalprice, cart) => {
                    return totalprice + (cart.price * cart.quantity);
                }, 0);
                this.totalprice = price
            })
        },
        deleteCart(id) {
            this.loading= true
            axios.post(`https://shopx-api.betamxpertz.xyz/api/cart/${id}`)
            .then(() => {
                this.fetchCart();
                this.loading= false
                this.$swal({
                    title: 'Removed from cart !!',
                    icon: 'success'
                });
            })
            .catch(()=>{
                this.loading= false
                this.$swal({
                    title: 'Error occurred !!',
                    icon: 'error'
                });
            }) 
        },
    },
    mounted(){
        this.fetchCart();
    }
}
</script>