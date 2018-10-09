import ballerina/http;
import ballerinax/docker;

@http:ServiceConfig {
    basePath:"/helloWorld"
}
@docker:Config {
    //dockerHost:"tcp://192.168.99.100:2376",
    //dockerCertPath:"/Users/anuruddha/.minikube/certs"
}
service<http:Service> helloWorld bind {port:9090} {
    sayHello(endpoint outboundEP, http:Request request) {
        http:Response response = new;
        response.setTextPayload("Hello, World from Ballerina ! \n");
        _ = outboundEP->respond(response);
    }
}