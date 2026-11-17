

#!/bin/bash

# Update system packages
dnf update -y

# Install Nginx
dnf install nginx -y

# Start and enable Nginx
systemctl enable nginx
systemctl start nginx

# Create custom web page
cat > /usr/share/nginx/html/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Production EC2 Server</title>
</head>
<body>
    <h1>Production EC2 Server</h1>
    <h2>Deployed successfully on AWS!</h2>
    <p>Web server running on Amazon Linux 2023.</p>
</body>
</html>
EOF

# Restart Nginx
systemctl restart nginx
