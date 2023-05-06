function fn(){
    var env = karate.env;
    karate.log('karate.env system property was:', env);
    if (!env) {
        env = 'dev';
    }
    if (env == 'dev') {
        var config = {
            baseUrl: 'https://petstore.swagger.io/v2'
        };
    }
    if (env == 'qa') {
        var config = {
            baseUrl: 'http://localhost:8080'
        };
    }
    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000);
    return config;

}