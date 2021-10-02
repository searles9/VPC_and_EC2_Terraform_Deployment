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