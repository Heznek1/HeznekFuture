<template>
  <card>
    <h4 slot="header" class="card-title">Profile</h4>
    <form>
      <div class="row">
        <div class="col-md-5">
          <fg-input type="text"
                    label="ID"
                    :disabled="true"
                    placeholder="User ID"
                    v-model="profile.unique_id">
          </fg-input>
        </div>
        <!-- <div class="col-md-3">
          <fg-input type="text"
                    label="Username"
                    placeholder="Username"
                    v-model="user.username">
          </fg-input>
        </div> -->
        <div class="col-md-4">
          <fg-input type="email"
                    label="Email"
                    placeholder="Email"
                    v-model="profile.email">
          </fg-input>
        </div>
      </div>

      <div class="row">
        <div class="col-md-6">
          <fg-input type="text"
                    label="First Name"
                    placeholder="First Name"
                    v-model="profile.first_name">
          </fg-input>
        </div>
        <div class="col-md-6">
          <fg-input type="text"
                    label="Last Name"
                    placeholder="Last Name"
                    v-model="profile.last_name">
          </fg-input>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12">
          <fg-input type="phone"
                    label="Phone"
                    placeholder="Phone number"
                    v-model="profile.phone">
          </fg-input>
        </div>
      </div>

      <!-- <div class="row">
        <div class="col-md-4">
          <fg-input type="text"
                    label="City"
                    placeholder="City"
                    v-model="user.city">
          </fg-input>
        </div>
        <div class="col-md-4">
          <fg-input type="text"
                    label="Country"
                    placeholder="Country"
                    v-model="user.country">
          </fg-input>
        </div>
        <div class="col-md-4">
          <fg-input type="number"
                    label="Postal Code"
                    placeholder="ZIP Code"
                    v-model="user.postalCode">
          </fg-input>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12">
          <div class="form-group">
            <label>About Me</label>
            <textarea rows="5" class="form-control border-input"
                      placeholder="Here can be your description"
                      v-model="user.aboutMe">
              </textarea>
          </div>
        </div>
      </div> -->
      <div class="text-center">
        <button type="submit" class="btn btn-info btn-fill float-right" @click.prevent="updateProfile">
          Update Profile
        </button>
      </div>
      <div class="clearfix"></div>
    </form>
  </card>
</template>
<script>
import Card from 'src/components/UIComponents/Cards/Card.vue';
import HeznekService from '../../../configuration/heznekservice.js';

export default {
  components: {
    Card
  },
  created () {
    this.getUserProfile();
  },
  data () {
    return {
      text: 'Hello',
      profile: {
        unique_id: '',
        first_name: '',
        last_name: '',
        email: '',
        phone: ''
      }
    }
  },
  methods: {
    updateProfile : function () {
      var that = this;
      HeznekService.updateUserProfile(that.profile)
      .then(function(response){
        console.log(response.data);
      })
      .catch(function(error){
        console.log(error);
      })
    },
    getUserProfile : function () {
      var that = this;
      HeznekService.getUserProfile()
      .then(function(response){
        that.profile = response.data;
      })
      .catch(function(error){
        console.log(error)
      });
    }
  }
}

</script>
<style>

</style>
