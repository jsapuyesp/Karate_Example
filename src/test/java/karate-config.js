function fn() {
    var config = {
        dummyUrl : 'https://dummyjson.com'
    };

    var env = karate.env; // dev, qa

    if (env == 'qa') {
        config.baseUrl = 'https://jsonplaceholderDEV.typicode.com';
    } else { //dev por defecto
        config.baseUrl = 'https://jsonplaceholderQA.typicode.com';
    }

    return config;
}



/// Para ejecutar: ./gradlew test -Dkarate.env=qa, elegimos el ambiente, si no lo enviamos, vamos a dev

