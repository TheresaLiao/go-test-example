# go-test-example
This is a simple sample for golang testing
```shell=
$ docker build -t golang-test:latest .
$ docker run -ti -d --name helloworld-gotest golang-test sh
$ docker exec -ti helloworld-gotest sh
$ docker stop helloworld-gotest;docker rm helloworld-gotest
```
