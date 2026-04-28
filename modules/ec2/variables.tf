variable "environment" {
  description = "Environment name"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where EC2 will be deployed"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID attached to EC2"
  type        = string
}

variable "common_tags" {
  description = "Common tags"
  type        = map(string)
}
