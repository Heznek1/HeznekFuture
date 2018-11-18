import appsettings from './appsettings.js';
import axios from 'axios';
import windowadapter from '../adapters/window.adapter.js';

export default {
  getUserProfile : function () {
    return axios.get(appsettings.getProfileUrl(), {
      headers : {
        Authorization : windowadapter.getTokenFromSessionStorage()
      }
    });
  },
  updateUserProfile : function (data) {
    return axios.patch(appsettings.getProfileUrl(), data, {
      headers : {
        Authorization : windowadapter.getTokenFromSessionStorage()
      }
    });
  }
}
