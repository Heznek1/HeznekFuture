import axios from 'axios';
import appsettings from '../../configuration/appsettings.js';
import windowAdapter from '../../adapters/window.adapter.js';
import template from '../../configuration/notificationsTemplates.js';

export default {
  created () {},
  data () {
    return {
      userSignInCredentials: {
        username: '',
        password: ''
      },
      userRegisterDetails: {
        username: '',
        first_name: '',
        last_name: '',
        email: '',
        password: '',
        confirm: '',
        phone: ''
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
        windowAdapter.setDataToSessionStorage(response.data);
        that.notifySuccess(template.success);
      })
      .catch(function(){
        that.notifyError(template.usernameOrPassword);
      });
    },
    onRegister: function() {
      var that = this;
      axios.post(appsettings.getRegisterUrl(), that.userRegisterDetails)
      .then(function(response){
        that.notifySuccess(template.success);
      })
      .catch(function(error){
        console.log(error);
        that.notifyError(template.customMessage(error.message));
      });
    },
    animateForm: function() {
      this.signInTitle = !this.signInTitle
      $('form').animate({ height: 'toggle', opacity: 'toggle' }, 'slow')
    },
    notifyError: function(messageTemplate) {
        const notificationProps = {
          icon: 'nc-icon nc-app',
          horizontalAlign: 'right',
          verticalAlign: 'top',
          type: 'danger'
        }

        const notification = {
          template: messageTemplate
        }

        this.$notifications.notify(
          {
            component: notification,
            icon: notificationProps.icon,
            horizontalAlign: notificationProps.horizontalAlign,
            verticalAlign: notificationProps.verticalAlign,
            type: notificationProps.type
          })
    },
    notifySuccess: function(messageTemplate) {
      const notificationProps = {
        icon: 'nc-icon nc-app',
        horizontalAlign: 'right',
        verticalAlign: 'top',
        type: 'success'
      }

      const notification = {
        template: messageTemplate
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
