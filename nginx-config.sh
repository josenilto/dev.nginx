sudo yum install epel-release -y &&
sudo yum install nginx -y &&
sudo systemctl start nginx.service &&
sudo firewall-cmd --permanent --zone=public --add-service=http &&
sudo firewall-cmd --permanent --zone=public --add-service=https &&
sudo firewall-cmd --reload