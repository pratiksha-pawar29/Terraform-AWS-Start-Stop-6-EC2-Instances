# aws-serverless-ec2-start-stop-scheduler

AWS Serverless EC2 Start-Stop Scheduler Using Terraform

📌 Project Overview

This project automates the starting and stopping of Amazon EC2 instances at scheduled times using AWS Lambda, Amazon EventBridge Scheduler, and Terraform. It helps optimize cloud resource usage and reduce unnecessary EC2 running costs.

🏗️ Architecture

![AWS Serverless EC2 Start-Stop Scheduler Architecture](architecture.png)

Terraform provisions and manages the AWS infrastructure. Amazon EventBridge Scheduler triggers an AWS Lambda function according to the configured schedule. Lambda uses Python and Boto3 to start or stop the selected EC2 instances. Amazon CloudWatch collects execution logs.

Workflow:

1. Terraform creates the required AWS resources.
2. EventBridge Scheduler triggers Lambda at the scheduled time.
3. Lambda calls the EC2 StartInstances or StopInstances API.
4. EC2 instances start or stop according to the configured action.
5. CloudWatch stores execution logs for monitoring and troubleshooting.

🛠️ Technologies Used

- AWS EC2
- AWS Lambda
- Amazon EventBridge Scheduler
- AWS IAM
- Amazon CloudWatch
- Terraform
- Python
- Boto3

✨ Key Features

- Automated EC2 start and stop scheduling
- Serverless execution using AWS Lambda
- Infrastructure provisioning using Terraform
- IAM-based access control
- CloudWatch logging and monitoring
- Configurable schedules and target instances
- Reduced manual administration

📂 Project Structure

aws-serverless-ec2-start-stop-scheduler/
├── main.tf
├── variables.tf
├── outputs.tf
├── lambda/
│   └── ec2_scheduler.py
├── terraform.tfvars.example
├── .gitignore
└── README.md

🚀 Deployment Steps

1. Install Terraform, Python, and the AWS CLI.
2. Configure AWS credentials securely.
3. Update the project variables with your AWS region, instance IDs, and schedule.
4. Initialize Terraform:
   "terraform init"
5. Validate the configuration:
   "terraform validate"
6. Review the infrastructure plan:
   "terraform plan"
7. Deploy the resources:
   "terraform apply"

🎯 Learning Outcomes

- Learned AWS Infrastructure as Code using Terraform.
- Implemented scheduled cloud automation.
- Integrated Lambda with EC2 using Boto3.
- Configured IAM permissions and CloudWatch logging.
- Explored cost optimization through EC2 lifecycle management.

🔐 Security and Cost Considerations

- Apply least-privilege IAM permissions to the intended EC2 instances.
- Never upload AWS access keys, secrets, or Terraform state files to GitHub.
- Verify schedules and time zones before deployment.
- Review AWS charges because stopping EC2 instances does not eliminate all associated storage and resource costs.

Author 

Pratiksha Pawar 