export default {
  created () {},
  data () {
    return {
      userSignInCredentials: {
        username: '',
        password: ''
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
    formTitle: function () {
      return this.signInTitle ? 'Sign In' : 'Register'
    }
  },
  methods: {
    onLogin: function () {

    },
    onRegister: function () {

    },
    animateForm: function () {
      this.signInTitle = !this.signInTitle
      $('form').animate({ height: 'toggle', opacity: 'toggle' }, 'slow')
    }
  }
}
