# Technical Notes
***
***
# Overview 
* Private subnet ec2 instances: backend application servers
* Public subnet ec2 instances: web app 
* Routes for the subnets
* Internet gateway so we can access the internet
* NAT gateway for the private subnets so the instances in the private subnets can access internet resources (but internet resources wont be able to reach the private instances)
* There will be load balancers so we can implement HA
* We will create an EC2 launch configuration . In this we will define the EC2 instance type and the startup script.
* We will create an auto scaling group
* We will connect the auto scaling group to an SNS topic. It will send a notification for the scaling actions.

* ```terraform init -backend-config='backend-config-file-path```
* ```terraform plan -var-file='var-file-path' -var='some-var=some-value'```
* ```terraform apply -var-file='var-file-path' -var='some-var=some-value'```
* ```terraform destroy -var-file='var-file-path' -var='some-var=some-value'```

***
# Create key pair for EC2
* create it from the console 
***
# Creating an S3 bucket for Terraform Remote State
* create an S3 bucket
***
# Creating the remote state for S3
* create infrastructure-prod.config
***
# VPC
* https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc
***
# Subnets
* https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet
* 3 Public 
* 3 Private
***
# Route Tables
* create route tables for the subnets
* 1 for private subnets
* 1 for public subnets
***
# Route Table Associations
* you have to associate each individual subnet with a specific route table
***
# Creating an elastic IP for the NAT Gateway
* create an elastic ip and mark that it will be used with a vpc
* associate the eip with a private ip
***
# Create a NAT Gateway
* associate the eip with the nat gateway
* associate the nat gaeway with a subnet
* put the nat gateway in the public subnet so it can use the route to the internet 
* associate the nat gateway with the private route table since the private subnets will be using the nat gatewat for egress internet traffic
***
# Create an internet gateway
* create the internet gateway
* make a route to associate the igw with the public route table - which gives it a route to the internet
***
# apply the vpc config
* ```terraform init```
* ``` terraform plan```
* ```terraform apply```
***