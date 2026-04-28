variable "environment" {
  description = "Environment name"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the security group will be created"
  type        = string
}

variable "ssh_allowed_cidr" {
  description = "CIDR block allowed to SSH into the instance"
  type        = string
}

variable "http_allowed_cidrs" {
  description = "CIDR blocks allowed to access HTTP"
  type        = list(string)
}

variable "common_tags" {
  description = "Common tags"
  type        = map(string)
}
