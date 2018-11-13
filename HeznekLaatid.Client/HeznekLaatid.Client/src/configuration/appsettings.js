const tokenServiceUrl = 'http://localhost/TokenService/';
const authenticateEndpoin = 'api/authenticate';

export default {
  getAuthenticationUrl : function() {
    return tokenServiceUrl + authenticateEndpoin;
  }
}
