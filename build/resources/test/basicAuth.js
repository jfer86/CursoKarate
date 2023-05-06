function auth(cred){

let info = cred.username + ":" + cred.password;
let base64 = Java.type("java.util.Base64");
let encoded = base64.getEncoder().encodeToString(info.getBytes());
return "Basic " + encoded;

}