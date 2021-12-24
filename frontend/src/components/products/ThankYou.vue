<template>
    <div>
        <section class="thankyou py-5">
            <div class="container">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="thankyou-content text-center">
                            <img src="/images/order.gif" alt="Order placed">
                            <h1>Your Order placed Successfully</h1>
                            <p class="mb-4">Order items will be delivered to you with in 3-7days</p>
                            <router-link to="/shop" class="letsbtn">Go back to shopping</router-link>
                        </div>
                    </div>
                    <div class="col-sm-2"></div>
                </div>
            </div>
        </section>
    </div>
</template>

<script>
export default {
    name:'ThankYou',
    data(){
        return{

        }
    },
}
</script>