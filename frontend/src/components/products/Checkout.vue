<template>
    <div>
        <div class="container my-5" v-if="!cart">
            <div class="alert alert-info" role="alert">
                There is no product in your cart. Please add some products then come for checkout!!
            </div>
        </div>
        <section class="checkout">
            <div class="container">
                <h2 class="text-center my-5">Checkout</h2>
                <div class="row">
                    <div class="col-sm-7">
                        <div class="checkout-content">
                            <h5>SHIPPING ADDRESS</h5>
                            <form @submit.prevent="OrderPlace">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>First Name</label>
                                            <input type="text" class="form-control" required placeholder="First Name" v-model="order.first_name">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Last Name</label>
                                            <input type="text" class="form-control" required placeholder="Last Name" v-model="order.last_name">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Street Address</label>
                                            <input type="text" class="form-control" required  placeholder="Street Address" v-model="order.address_line_1">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Landmark</label>
                                            <input type="text" class="form-control" placeholder="Landmark" v-model="order.address_line_2">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label>City</label>
                                            <input type="text" class="form-control" required  placeholder="City" v-model="order.city">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label>State</label>
                                            <input type="text" class="form-control" required  placeholder="State" v-model="order.state">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label>Pincode</label>
                                            <input type="text" class="form-control" required  placeholder="Pincode" v-model="order.pincode">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="delivery py-3">
                                            <h6 class="mb-2">SELECT DELIVERY METHOD</h6>
                                            <div class="form-group my-2 mt-3">
                                                <input type="radio" required value="Standard(Delivery between 3-7 Working Days)" v-model="order.delivery_method"> Standard(Delivery between 3-7 Working Days)
                                            </div>
                                            <div class="form-group my-2">
                                                <input type="radio" required value="Express Delivery(Delivery within 3 Days)" v-model="order.delivery_method"> Express Delivery(Delivery within 3 Days)
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="delivery py-3">
                                            <h6 class="mb-2">PAYMENT METHOD</h6>
                                            <div class="form-group my-2 mt-3">
                                                <input type="radio" required value="Cash on Delivery"> Cash on Delivery
                                            </div>
                                            <!-- <div class="form-group my-2">
                                                <input type="radio" required value="Pay with Razorpay" v-model="order.delivery_method" @click="cashondelivery= !cashondelivery"> Pay with Razorpay
                                            </div> -->
                                        </div>
                                    </div>
                                    <button class="letsbtn">{{ loading ? "Processing..." : "Place Order" }}</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-sm-1"></div>
                    <div class="col-sm-4 side-order">
                        <div class="order-summary">
                            <h5 class="mb-5">ORDER SUMMARY</h5>
                            <div class="order">
                                <h6>Sub total</h6>
                                <h6>INR {{subtotal}}</h6>
                            </div>
                            <div class="order shipping">
                                <!-- <h6>Shipping</h6>
                                <h6>INR {{shippingprice}}</h6> -->
                            </div>

                            <div class="order">
                                <h6>Total Price</h6>
                                <h6>INR {{totalprice}}</h6>
                            </div>
                            <!-- <div class="w-100" ref="paypal"></div> -->
                            <!-- <button @click="PayOnline" class="letsbtn">Pay with Razorpay</button> -->
                        </div>
                        <div class="bag-summary my-5">
                            <h5 class="mb-3">BAG SUMMARY</h5>
                            <p class="arriving mb-3">Arriving in 3-7 Days</p>
                            <div class="my-5" v-if="!cart">
                                <div class="alert alert-info" role="alert">
                                    There is no product in your cart. Please add some products then come for checkout!!
                                </div>
                            </div>
                            <div class="bag my-5" v-for="(cart,index) in carts" :key="index">
                                <img :src="'https://shopx-api.betamxpertz.xyz' + cart.image" :alt="cart.product">
                                <div class="bag-details">
                                    <h6>{{cart.product}}</h6>
                                    <p>INR {{cart.price}}</p>
                                    <p>Qty: {{cart.quantity}}</p>
                                    <button class="btn btn-danger mt-2 removebtn"  @click="deleteCart(cart.id)">Remove</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
            order:{
                first_name:'',
                last_name:'',
                address_line_1:'',
                address_line_2:'',
                city:'',
                state:'',
                pincode:'',
                delivery_method:'',
                total_price:'',
            },
            carts:[],
            // cashondelivery: false,
            subtotal:'',
            shippingprice:'50',
            totalprice:'',
            quantity:'1',
            user:[],
            loading: false,
            loaded:false,
        }
    },
    created(){
        axios.get('https://shopx-api.betamxpertz.xyz/api/user',{
            headers:{
                Authorization: 'Bearer ' + localStorage.getItem('token')
            }
        })
        .then(res=>{
            this.user = res.data
        })
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
                let price = this.carts.reduce((subtotal, cart) => {
                    return subtotal + (cart.price * cart.quantity);
                }, 0);
                this.subtotal = price
                
                let total = this.carts.reduce((subtotal, cart) => {
                    return subtotal + (cart.price * cart.quantity);
                }, 0);
                this.totalprice = total
                // let total = this.subtotal + this.shippingprice;
                //  return this.totalprice = total
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
        OrderPlace(){
            this.loading= true
            this.order.total_price = this.totalprice,
            axios.post('https://shopx-api.betamxpertz.xyz/api/orders', this.order,{headers:{Authorization: 'Bearer ' + localStorage.getItem('token')}})
            .then(()=>{
                this.loading= true
                this.$swal({
                    title: 'Order placed successfully !!',
                    icon: 'success'
                });
                this.$router.push('/thankyou')
            })
            .catch(error=>{
                console.log(error)
               this.loading= false
                this.$swal({
                    title: 'Error Occurred !!',
                    icon: 'error'
                });
            })
        },
        setLoaded(){
            this.loaded = true
            window.paypal.Buttons({
                createOrder: function(data, actions) {
                // This function sets up the details of the transaction, including the amount and line item details.
                return actions.order.create({
                    purchase_units: [{
                    amount: {
                        value: '0.01'
                    }
                    }]
                });
                },
                onApprove: function(data, actions) {
                // This function captures the funds from the transaction.
                return actions.order.capture().then(function() {
                    // This function shows a transaction success message to your buyer.
                    this.OrderPlace();
                });
                }
            })
            .render(this.$refs.paypal);
        },
        
    },
    mounted(){
        this.fetchCart();
    
        const script = document.createElement("script");
        script.src = 
        "https://www.paypal.com/sdk/js?client-id=AXVsMTXXxR9QwpqYl_DFTo6cZg2cCwjEQbQkiDZCGxxRc-pSr6-jSlISoQHw3_ez6q6aLEI-pYCwxovG";
        script.addEventListener('load',this.setLoaded);
        document.body.appendChild(script);
    }
}
</script>