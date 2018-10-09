import ballerina/http;

@http:ServiceConfig {
    basePath:"/helloWorld"
}

service<http:Service> helloWorld bind {port:9090} {
    sayHello(endpoint outboundEP, http:Request request) {
        http:Response response = new;
        response.setTextPayload("Hello, World from Ballerina ! \n");
        _ = outboundEP->respond(response);
    }

}