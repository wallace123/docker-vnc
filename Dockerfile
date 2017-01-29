# Base image
FROM ubuntu:latest

# Update and upgrade the system
RUN apt-get update
RUN apt-get -y upgrade

# Install firefox x11vnc xvfb
RUN apt-get install -y x11vnc xvfb firefox

# Start firefox automatically
RUN echo "firefox" >> ~/.bashrc

# Copy vnc setup script to /tmp/
# Script sets VNC password with environment variable VNCPASS
COPY setup_vnc.sh /tmp/
RUN chmod +x /tmp/setup_vnc.sh

# Start firefox on startup
EXPOSE 5900

# Run the script
CMD ["/tmp/setup_vnc.sh"]
