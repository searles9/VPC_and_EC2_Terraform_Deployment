# VPC_and_EC2_Terraform_Deployment
AWS deployment of EC2 and VPC resources using Terraform (IAC)
***
***
# AWS Resources Created:
![Diagram](./IMAGES/Deployment-Diagram.png)
* VPC
* Subnets
* Security Groups
* Route Tables
* Internet and NAT Gateways
* Auto-Scaling Groups
* more...

# State management
I used terraform cloud for state management, and setup 2 workspaces.
### vpc-and-ec2-vpc
* This workspace is for the VPC/base infrastructure resources and acts as the root folder 
### vpc-and-ec2-platform
* This workspace is for the other resources (EC2,SNS,Etc...). It pulls outputs from the "vpc-and-ec2-vpc" workspace.