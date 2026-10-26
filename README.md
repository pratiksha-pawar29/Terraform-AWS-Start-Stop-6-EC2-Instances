Terraform + AWS: Start & Stop 6 EC2 Instances

Project Overview

This project uses Terraform to provision and manage six Amazon EC2 instances on AWS. It allows you to start and stop instances without deleting them.

Architecture

"Terraform + AWS: Start & Stop 6 EC2 Instances" (Architecture.png)

Technologies Used

- AWS EC2
- Terraform
- Amazon Linux 2023
- AWS CLI

Key Features

- Creates six EC2 instances using Terraform.
- Automates instance management through Infrastructure as Code.
- Starts and stops instances using Terraform variables.
- Displays instance IDs and names through outputs.

Deployment Commands

terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply

Stop Instances

terraform apply -var="action=stopped"

Start Instances

terraform apply -var="action=running"

Learning Outcomes

- AWS infrastructure provisioning
- Terraform variables and outputs
- EC2 instance lifecycle management

Note: Review "terraform plan" before applying changes. AWS charges may apply to running instances and associated resources.

Author 

Pratiksha Pawar 
