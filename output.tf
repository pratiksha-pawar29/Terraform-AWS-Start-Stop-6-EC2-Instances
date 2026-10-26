
output "instance_ids" {
  description = "IDs of the six EC2 instances"
  value       = aws_instance.ec2[*].id
}

output "instance_names" {
  description = "Names of the six EC2 instances"
  value       = aws_instance.ec2[*].tags.Name
}

output "instance_state" {
  description = "Desired state configured for the EC2 instances"
  value       = var.action
}
