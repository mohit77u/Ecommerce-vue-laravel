<template>
  <div>
    <section class="top-bar">
      <div class="container">
        <div class="row">
          <div class="col-sm-5">
            <div class="left-top">
              <ul>
                <li><a href="#"><i class="fas fa-envelope"></i> info@theshopx.com</a></li>
                <li><a href="#"><i class="fas fa-clock"></i> Mon - Fri: 10:00 - 22:00</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-4">
            <form>
              <div class="form-group">
                <form :action="'/product/search/q=' + search">
                  <input type="text" v-model="search" class="form-control" placeholder="Search products,brands...">
                  <i class="fas fa-search"></i>
                </form>
              </div>
            </form>
          </div>
          <div class="col-sm-2">
            <div class="right-top">
              <ul>
                <li v-if="loggedIn"><router-link to="/user"><i class="far fa-user-circle"></i>Profile</router-link></li>
                <li v-if="!loggedIn"><router-link to="/login"><i class="far fa-user-circle"></i>Profile</router-link></li>
                <li><router-link to="/cart"><i class="fas fa-shopping-bag"></i> Cart</router-link></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-1">
            <div class="last-top">
              <ul>
                <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                <li><a href="#"><i class="fab fa-instagram"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section :class="{ header: scrollPosition < 500, sticky: scrollPosition > 500 }">
      <nav class="navbar navbar-expand-md">
        <div class="container">
          <router-link class="navbar-brand" to="/"><img src="/images/shop-logo.png" alt="Shop"> The Shop X</router-link>
          <a data-bs-toggle="offcanvas" href="#offcanvasExample" aria-controls="offcanvasExample">
            <button class="navbar-toggler" data-bs-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
              <span class="toggle-btn top-nav-toggle"></span>
              <span class="toggle-btn middle-nav-toggle"></span>
              <span class="toggle-btn bottom-nav-toggle"></span>
            </button>
          </a>
          <div class="collapse navbar-collapse" id="navbarNav">
          <!-- <input type="text" class="form-control" placeholder="Search for products here..."> -->
            <ul class="navbar-nav">
              <li class="nav-item">
                <router-link class="nav-link active" aria-current="page" to="/"
                  >Home</router-link
                >
              </li>
              <!-- <li class="nav-item">
                <router-link class="nav-link" to="/about"
                  >About</router-link
                >
              </li> -->
              <li class="nav-item">
                <router-link class="nav-link" to="/shop"
                  >Shop</router-link
                >
              </li>
              <li class="nav-item">
                <router-link class="nav-link" to="/blog"
                  >Blog</router-link
                >
              </li>
              <li class="nav-item">
                <router-link class="nav-link" to="/contact"
                  >Contact us</router-link
                >
              </li>
              <li class="nav-item" v-if="!loggedIn">
                <router-link class="loginbtn nav-link" to="/login">Login</router-link>
              </li>
              <li class="nav-item" v-if="loggedIn">
                <a class="nav-link" href="#" @click="Logout">Log Out</a>
              </li>
            </ul>
          </div>

          <div
            class="offcanvas offcanvas-start"
            tabindex="1"
            id="offcanvasExample"
            aria-labelledby="offcanvasExampleLabel"
          >
            <div class="offcanvas-header">
              <h5 class="offcanvas-title" id="offcanvasExampleLabel">
                 <router-link class="navbar-brand" to="/"><img src="/images/shop-logo.png" alt="Shop"> The Shop X</router-link>
              </h5>
              <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"><i class="fas fa-times"></i></button>
            </div>
            <div class="offcanvas-body">
              <ul
                class="navbar-nav"
                data-bs-dismiss="offcanvas"
                aria-label="Close"
              >
                <li class="nav-item">
                  <router-link
                    class="nav-link active"
                    aria-current="page"
                    to="/"
                    >Home</router-link
                  >
                </li>
                <!-- <li class="nav-item">
                  <router-link class="nav-link" to="/about"
                    >About</router-link
                  >
                </li> -->
                <li class="nav-item">
                  <router-link
                    class="nav-link active"
                    aria-current="page"
                    to="/shop"
                    >Shop</router-link
                  >
                </li>
                <li class="nav-item">
                  <router-link class="nav-link" to="/blog"
                    >Blog</router-link
                  >
                </li>
                <li class="nav-item">
                  <router-link class="nav-link" to="/contact"
                    >Contact us</router-link
                  >
                </li>
                <li class="nav-item" v-if="!loggedIn">
                  <router-link class="nav-link" to="/login">Login</router-link>
                </li>
                <li class="nav-item" v-if="loggedIn">
                  <a class="nav-link" href="#" @click="Logout">Log Out</a>
                </li>
              </ul>
              <div class="searchbox">
                 <form :action="'/product/search/q=' + search">
                    <div class="input-group flex-nowrap">
                        <input type="text" v-model="search" class="form-control" placeholder="Search">
                        <button class="input-group-text"  type ="submit" id="addon-wrapping"><i class="fas fa-search"></i></button>
                    </div>
                </form>
              </div>
              <div class="profile-cart" data-bs-dismiss="offcanvas"
                aria-label="Close">
                <ul>
                  <li v-if="loggedIn"><router-link to="/user"><i class="far fa-user-circle"></i>Profile</router-link></li>
                  <li v-if="!loggedIn"><router-link to="/login"><i class="far fa-user-circle"></i> Profile</router-link></li>
                  <li><router-link to="/cart"><i class="fas fa-shopping-bag"></i> Cart</router-link></li>
                </ul>
              </div>
              <div class="social" data-bs-dismiss="offcanvas" aria-label="Close">
                <a href="#" target="blank"><i class="fab fa-facebook-f"></i></a>
                <a href="#" target="blank"><i class="fab fa-twitter"></i></a>
                <a href="#" target="blank"><i class="fab fa-instagram"></i></a>
                <a href="#" target="blank"><i class="fab fa-skype"></i></a>
            </div>
            <!-- <p class="text-center my-2">The Shop X @2021 All Rights Reserved.</p> -->
            <div class="text-center my-2" data-bs-dismiss="offcanvas" aria-label="Close">
              <router-link class="navbar-brand offcanvabottomlogo" to="/"><img src="/images/shop-logo.png" alt="Shop"> The Shop X</router-link>
            </div>
            </div>
          </div>
        </div>
      </nav>
    </section>
  </div>
</template>
<script>
export default {
  name: "Header",
  data() {
    return {
      scrollPosition: null,
      search:'',
    };
  },
  methods: {
    updateScroll() {
      this.scrollPosition = window.scrollY;
    },
    Logout() {
      this.$store.dispatch("Logout").then(() => {
        this.$router.push("/login");
      });
    },
  },
  mounted() {
    window.addEventListener("scroll", this.updateScroll);
  },
  computed: {
    loggedIn() {
      return this.$store.getters.loggedIn;
    },
  },
};
</script>
