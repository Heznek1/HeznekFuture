import Vue from 'vue'
import VueRouter from 'vue-router'
import App from './App.vue'
import jQuery from 'jquery'
import underscore from 'underscore'
import { library } from '@fortawesome/fontawesome-svg-core'
import { fas } from '@fortawesome/free-solid-svg-icons'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

// jQuery setup
window.$ = jQuery
window.jQuery = jQuery

// Uderscore.JS setup
window._ = underscore

// LightBootstrap plugin
import LightBootstrap from './light-bootstrap-main'

// router setup
import routes from './routes/routes'

// Font Awesome
library.add(fas)
Vue.component('font-awesome-icon', FontAwesomeIcon)

// plugin setup
Vue.use(VueRouter)
Vue.use(LightBootstrap)

// configure router
const router = new VueRouter({
  routes, // short for routes: routes
  linkActiveClass: 'nav-item active'
})

/* eslint-disable no-new */
new Vue({
  el: '#app',
  render: h => h(App),
  router
})
