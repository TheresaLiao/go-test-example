# go-test-example
This is a simple sample for golang testing
```shell=
$ docker build -t golang-test:latest .
$ docker run -ti -d --name helloworld-gotest golang-test
$ docker exec -ti helloworld-gotest go test
## show check
## PASS
## ok      _/app   0.004s

$ docker stop helloworld-gotest;docker rm helloworld-gotest
```
