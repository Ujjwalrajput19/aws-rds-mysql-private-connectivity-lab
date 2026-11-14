# LinkedIn post draft

🚀 **AWS Hands-on Lab: Connecting to a Private Amazon RDS MySQL Database Through an EC2 Bastion Host**

I completed a hands-on AWS lab focused on securely reaching a private managed database without exposing MySQL directly to the internet.

**What I built and tested:**
- Connected to an Amazon EC2 instance using SSH.
- Verified EC2-to-RDS network reachability on MySQL TCP port 3306.
- Set up SSH local port forwarding from my WSL workstation to the private RDS endpoint through EC2.
- Connected Sqlectron to MySQL through the local forwarded port.
- Verified the MySQL server version and created a practice database and table.

**Architecture:** Workstation → SSH local port forward → EC2 bastion → private Amazon RDS for MySQL.

**Key learning:** Testing each network hop independently makes connectivity troubleshooting clearer.

Project: https://github.com/Ujjwalrajput19/aws-rds-mysql-private-connectivity-lab

#AWS #AmazonRDS #AmazonEC2 #MySQL #CloudEngineering #Networking #AWSLearning

Before publishing, verify the saved security-group rule and only claim features that were actually tested.
