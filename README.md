# demo-docker
docker build -t my-python-app .

docker images ls | grep my-python-app


docker run -d --name python-container -p 8080:90 my-python-app

docker ps | grep python-container

docker logs python-container
