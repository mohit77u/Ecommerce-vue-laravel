import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

import VueSweetalert2 from 'vue-sweetalert2';
import 'sweetalert2/dist/sweetalert2.min.css';

const options = {
    position: 'top-end',
    showConfirmButton: false,
    timer: 2000,
    toast: true,
};
createApp(App)
.use(store)
.use(router)
.use(VueSweetalert2,options)
.mount('#app')
