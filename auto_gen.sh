docker stop helloworld-gotest;docker rm helloworld-gotest
docker build -t golang-test:latest .
docker run -ti -d -p 8080:8080 --name helloworld-gotest golang-test
docker exec -ti helloworld-gotest go test
