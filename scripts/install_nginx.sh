#!/usr/bin/env bash
set -euo pipefail
dnf update -y
dnf install -y nginx
cat > /usr/share/nginx/html/index.html <<HTML
<!DOCTYPE html>
<html>
<head><title>DevOps Lab</title></head>
<body>
<h1>Terraform AWS DevOps Lab</h1>
<p>Instance provisioned by Terraform.</p>
</body>
</html>
HTML
systemctl enable nginx && systemctl start nginx
dnf install -y firewalld
systemctl enable firewalld && systemctl start firewalld
firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-service=https
firewall-cmd --reload
