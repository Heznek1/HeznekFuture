import axios from 'axios';
import appsettings from '../../configuration/appsettings.js';

export default {
  created () {},
  data () {
    return {
      userSignInCredentials: {
        username: 'superuser',
        password: 'Password1'
      },
      userRegisterDetails: {
        name: '',
        username: '',
        password: '',
        confirmPassword: ''
      },
      signInTitle: true
    };
  },
  computed: {
    formTitle: function() {
      return this.signInTitle ? 'Sign In' : 'Register'
    }
  },
  methods: {
    onLogin: function() {
      let that = this;
      axios.post(appsettings.getAuthenticationUrl(), that.userSignInCredentials)
      .then(function(response){
        console.log(response);
      })
      .catch(function(){
        that.notifyError();
      });
    },
    onRegister: function() {

    },
    animateForm: function() {
      this.signInTitle = !this.signInTitle
      $('form').animate({ height: 'toggle', opacity: 'toggle' }, 'slow')
    },
    notifyError: function() {
        const notificationProps = {
          icon: 'nc-icon nc-app',
          horizontalAlign: 'right',
          verticalAlign: 'top',
          type: 'danger'
        }

        const notification = {
          template: `<span>Wrong <b>username or password</b>! Please try again and if the problem persists, contact our <b>support</b>.</span>`
        }

        this.$notifications.notify(
          {
            component: notification,
            icon: notificationProps.icon,
            horizontalAlign: notificationProps.horizontalAlign,
            verticalAlign: notificationProps.verticalAlign,
            type: notificationProps.type
          })
    }
  }
}
