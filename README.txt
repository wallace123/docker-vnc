# To build
docker build -t wallace123/docker-vnc .

# To run
docker run -d -p 5900 --name docker1-vnc -e VNCPASS="testpassword" wallace123/docker-vnc 
