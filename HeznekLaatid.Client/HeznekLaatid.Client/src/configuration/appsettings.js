const tokenServiceUrl = 'http://localhost/TokenService/';
const heznekServiceUrl = 'http://localhost/HeznekLaatidService/';
const authenticateEndpoin = 'api/authenticate';
const registerEndpoint = 'api/register';
const userProfileEndpoint = 'api/profile/';

export default {
  getAuthenticationUrl : function() {
    return tokenServiceUrl + authenticateEndpoin;
  },
  getRegisterUrl : function() {
    return tokenServiceUrl + registerEndpoint;
  },
  getProfileUrl : function() {
    return heznekServiceUrl + userProfileEndpoint;
  }
}
