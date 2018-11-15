<template>
  <div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">{{formTitle}}</h5>
            <div class="form">
              <form class="signin" v-on:submit.prevent='onLogin'>
                <div class="error"></div>
                <div class="form-label-group">
                  <input type="text" id="input-email-signin" class="form-control" v-model='userSignInCredentials.username' placeholder="Username" required autofocus>
                  <label for="input-email-signin">Username</label>
                </div>

                <div class="form-label-group">
                  <input type="password" id="input-password-signin" class="form-control" v-model='userSignInCredentials.password' placeholder="Password" required>
                  <label for="input-password-signin">Password</label>
                </div>

                <div class="custom-control custom-checkbox mb-3">
                  <input type="checkbox" class="custom-control-input" id="customCheck1">
                  <label class="custom-control-label" for="customCheck1">Remember password</label>
                </div>
                <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign in</button>
                <hr class="my-4">
                <!-- If we have time -->
                <!-- <button class="btn btn-lg btn-facebook btn-block text-uppercase" type="submit"><font-awesome-icon :icon="['fab', 'facebook']" /> Sign in with Facebook</button> -->
                <p class="message">Not registerd? <a href="#" @click='animateForm'>Create an account</a></p>
              </form>

              <form class="register" v-on:submit.prevent='onRegister'>
                <div class="form-label-group">
                  <input type="text" id="input-username-register" class="form-control" v-model="userRegisterDetails.username" placeholder="Username" required autofocus>
                  <label for="input-username-register">Username</label>
                </div>

                <div class="form-label-group">
                  <input type="email" id="input-email-register" class="form-control" v-model="userRegisterDetails.email" placeholder="Email address" required autofocus>
                  <label for="input-email-register">Email address</label>
                </div>

                <div class="form-label-group">
                  <input type="password" id="input-password-register" class="form-control" v-model="userRegisterDetails.password" placeholder="Password" required>
                  <label for="input-password-register">Password</label>
                </div>

                <div class="form-label-group">
                  <input type="password" id="input-password-confirm-register" class="form-control" v-model="userRegisterDetails.confirm" placeholder="Confirm password" required>
                  <label for="input-password-confirm-register">Confirm Password</label>
                </div>

                <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Register</button>
                <hr class="my-4">
                <p class="message">Already registered? <a href="#" @click='animateForm'>Sign In</a></p>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script src="./login.js">
</script>

<style src="./login.css">
</style>
