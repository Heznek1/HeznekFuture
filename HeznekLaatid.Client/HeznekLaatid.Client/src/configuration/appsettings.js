const tokenServiceUrl = 'http://localhost/TokenService/';
const authenticateEndpoin = 'api/authenticate';
const registerEndpoint = 'api/register';

export default {
  getAuthenticationUrl : function() {
    return tokenServiceUrl + authenticateEndpoin;
  },
  getRegisterUrl : function() {
    return tokenServiceUrl + registerEndpoint;
  }
}
