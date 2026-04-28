aws_region         = "us-east-1"
environment        = "staging"
vpc_cidr           = "10.20.0.0/16"
public_subnet_cidr = "10.20.1.0/24"
availability_zone  = "us-east-1a"
ami_id             = "ami-020cba7c55df1f615"
instance_type      = "t3.micro"
ssh_allowed_cidr   = "0.0.0.0/0"

common_tags = {
  Project     = "Asignment-1"
  Environment = "staging"
  Owner       = "Muhammad Virk"
  ManagedBy   = "Terraform"
  CostCenter  = "Learning"
}
