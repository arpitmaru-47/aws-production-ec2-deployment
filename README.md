

# AWS Production EC2 Deployment

## Project Overview
This project demonstrates the deployment of a production-style web server on AWS EC2 using Amazon Linux 2023 and Nginx.

The project covers EC2 configuration, networking, security, IAM roles, monitoring, backup, and recovery.

## Architecture

User Browser
    |
    | HTTP (Port 80)
    |
Internet Gateway
    |
Public Subnet
    |
EC2 Instance (Amazon Linux 2023)
    |
Nginx Web Server

## AWS Services Used

- Amazon EC2
- Amazon VPC
- Internet Gateway
- Security Groups
- AWS IAM
- Amazon CloudWatch
- Amazon Machine Image (AMI)
- Amazon EBS

## EC2 Configuration

| Configuration | Value |
|---|---|
| Instance Name | production-web-server |
| Operating System | Amazon Linux 2023 |
| Instance Type | t3.micro |
| Storage | 8 GiB gp3 |
| Web Server | Nginx |
| HTTP Port | 80 |
| SSH Port | 22 |

## Security Configuration

- SSH access restricted to My IP.
- HTTP access allowed on port 80.
- IAM Role attached to EC2.
- AmazonSSMManagedInstanceCore policy used.
- No AWS access keys stored on the instance.

## Deployment

Nginx was installed using EC2 User Data.

The web server displays:

Production EC2 Server
Deployed successfully on AWS!

## Monitoring

CloudWatch was used to monitor EC2 metrics.

A CPU utilization alarm was configured for high CPU usage.

## Backup and Recovery

- Created an AMI backup of the EC2 instance.
- Practiced launching a recovery instance from the AMI.
- Reviewed the backup and recovery workflow.

## Project Screenshots

### EC2 Instance
![EC2 Instance](screenshots/ec2-instance.png)

### Security Group
![Security Group](screenshots/security-group.png)

### Nginx Website
![Nginx Website](screenshots/nginx-website.png)

### CloudWatch Alarm
![CloudWatch Alarm](screenshots/cloudwatch-alarm.png)

### AMI Backup
![AMI Backup](screenshots/ami-backup.png)

## Learning Outcomes

- EC2 instance deployment
- VPC and public subnet configuration
- Security Group configuration
- IAM Role integration
- Nginx installation using User Data
- CloudWatch monitoring and alarms
- AMI backup and recovery

## Disclaimer

This is a learning project. Resource configurations and monitoring settings should be reviewed before production use.
