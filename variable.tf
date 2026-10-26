
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Existing EC2 key pair name; leave empty if not needed"
  type        = string
  default     = ""
}

variable "subnet_id" {
  description = "Optional subnet ID in the default VPC"
  type        = string
  default     = ""
}

variable "action" {
  description = "Desired state of all six EC2 instances"
  type        = string
  default     = "running"

  validation {
    condition     = contains(["running", "stopped"], var.action)
    error_message = "Action must be running or stopped."
  }
}
