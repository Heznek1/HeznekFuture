let tokenHeader = 'Authorization';
let tokenSchema = 'Bearer';
let roleHeader = 'Role';
let instanceHeader = 'Instance';

String.prototype.isNullOrEmptyOrUndefined = function () {
  if (this === null || this === undefined || this === "") {
    return true;
  }
  return false;
}

Number.prototype.isNullOrUndefined = function () {
  if (this === null || this === undefined) {
    return true;
  }
  return false;
}

export default {
  setDataToSessionStorage: function (data) {
    if (!data.token.isNullOrEmptyOrUndefined() && !data.role.isNullOrUndefined() && !data.instance.isNullOrUndefined()) {
      window.sessionStorage.setItem(tokenHeader, `${tokenSchema} ${data.token}`);
      window.sessionStorage.setItem(roleHeader, data.role);
      window.sessionStorage.setItem(instanceHeader, data.instance);
    }
  }
}
