

# EC2 Deployment Steps

## Step 1: Create VPC
- Create or select a VPC.
- Create a public subnet.
- Attach an Internet Gateway.
- Configure the route table.

## Step 2: Configure Security Group
- SSH: Port 22, source restricted to My IP.
- HTTP: Port 80, source 0.0.0.0/0.

## Step 3: Launch EC2
- Select Amazon Linux 2023.
- Choose t3.micro.
- Configure 8 GiB gp3 storage.
- Enable public IPv4.
- Attach the required IAM Role.
- Add Nginx User Data.

## Step 4: Verify Website
Open the instance public IPv4 address in a browser using HTTP.

Expected result:
Production EC2 Server
Deployed successfully on AWS!
