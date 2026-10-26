Terraform + AWS: Start & Stop 6 EC2 Instances

Project Overview

This project demonstrates how to provision and manage 6 Amazon EC2 instances using Terraform (Infrastructure as Code). It allows you to create six instances and change their power state between running and stopped without deleting them.

Architecture

"Terraform AWS Start and Stop 6 EC2 Instances" (architecture.png)

AWS Services and Tools

- AWS EC2 – Hosts six virtual machine instances.
- Terraform – Provisions and manages AWS infrastructure.
- AWS Provider – Connects Terraform to AWS.
- Amazon Linux 2023 – Operating system for the EC2 instances.

Project Features

- Creates six EC2 instances using Terraform's "count" meta-argument.
- Assigns unique names: "Terraform-EC2-1" to "Terraform-EC2-6".
- Uses variables to configure the AWS region, instance type, and desired state.
- Starts or stops instances without destroying them.
- Uses Terraform commands to plan and apply infrastructure changes.

Project Structure

terraform-ec2-start-stop/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
├── .gitignore
└── README.md

Prerequisites

- An AWS account.
- Terraform installed.
- AWS CLI configured with appropriate permissions.
- A default VPC in the selected AWS region.

Deployment Steps

Copy "terraform.tfvars.example" to "terraform.tfvars" and review the configuration.

Initialize Terraform:

terraform init

Format the configuration:

terraform fmt -recursive

Validate the code:

terraform validate

Preview the changes:

terraform plan

Create the six EC2 instances:

terraform apply

Stop the EC2 Instances

To stop all six instances without deleting them:

terraform plan -var="action=stopped"
terraform apply -var="action=stopped"

Start the EC2 Instances

To start all six instances again:

terraform plan -var="action=running"
terraform apply -var="action=running"

Verify the Results

Open the Amazon EC2 console and check the instance names and states. Terraform outputs can also display the instance IDs and names.

Important Notes

- Replace example settings with values appropriate for your AWS account.
- The default VPC must exist in the selected region.
- EC2 usage may incur AWS charges.
- Stopping instances does not delete them; associated storage may still incur charges.
- Review "terraform plan" before applying any changes.
- Do not upload AWS credentials, Terraform state files, or sensitive configuration files to GitHub.

Learning Outcomes

- Understanding Infrastructure as Code.
- Provisioning multiple EC2 instances using Terraform.
- Using Terraform variables, outputs, and the "count" meta-argument.
- Managing EC2 running and stopped states.
- Using Terraform commands for infrastructure management.

Official Documentation

- "Terraform AWS Provider" (https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- "AWS EC2" (https://docs.aws.amazon.com/ec2/)
- "Terraform Resources" (https://developer.hashicorp.com/terraform/language/resources)

---

Project: Terraform + AWS — Start & Stop 6 EC2 Instances
Category: Cloud Computing | AWS | Terraform | Infrastructure as Code

Author

Pratiksha Pawar 
