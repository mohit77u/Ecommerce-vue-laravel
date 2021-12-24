<template>
  <div id="app">
    <Header/>
      <div class="main">
        <router-view/>
      </div>
    <Footer/>
  </div>
</template>
<script>

import Header from './components/parts/Header.vue'
import Footer from './components/parts/Footer.vue'
import AOS from 'aos'
import '../public/css/style.css'

export default {
  name: 'App',
  components: {
    Header,Footer,
  },
  created(){
    AOS.init({
      once: true
    });
  },
  
}
</script>
