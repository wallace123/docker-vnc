# To build
docker build -t wallace123/docker-vnc .

# To run
docker run -d -p 5900 --name docker1-vnc -v /etc/hosts:/etc/hosts:ro -v /etc/resolv.conf:/etc/resolv.conf:ro -e VNCPASS="testpassword" wallace123/docker-vnc 
