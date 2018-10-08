## How to build the docker image

1. Copy ballerina-platform-0.982.0.zip
2. Use the following command to build the docker image

docker build -t anuruddhal/helloworld:v1 .

## How to run the docker image
Linux:
docker run -d anuruddhal/helloworld:v1

Mac:
docker run -d -p 9090:9090 anuruddhal/helloworld:v1

## Access the service
Linux:
http://172.17.0.2:9090/helloWorld/sayHello

Mac:
http://127.0.0.1:9090/helloWorld/sayHello


## View logs

docker logs <Container_ID>

## Bash into a running container

docker exec -it <Container_id> bash

## Kill the container
docker kill <Container_ID>