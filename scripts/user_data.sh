#!/bin/bash
sudo apt update -y
sudo apt install nginx -y

# Create custom HTML page
echo "<html>
<head><title>Rupesh DevOps Project</title></head>
<body style='background:black;color:white;text-align:center;'>
<h1> Hello from Terraform</h1>
<h2>Deployed by Rupesh </h2>
<p>This is my first DevOps project using AWS + Terraform</p>
</body>
</html>" > /var/www/html/index.html

sudo systemctl start nginx
sudo systemctl enable nginx
