#!/bin/bash

echo "Starting installation process on: ${SERVER}"
# Install the httpd package
sudo yum install -y httpd

# Create an index.html file.
echo "${HOSTNAME}" | sudo tee /var/www/html/index.html >/dev/null

# Start httpd
sudo systemctl start httpd

# Enable httpd
sudo systemctl enable httpd

# Test that the web server is accessible.
curl http://${SERVER}
echo "Finished installation process on: ${SERVER}"

