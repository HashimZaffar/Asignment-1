module "network" {
  source = "../../modules/network"

  environment        = var.environment
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  availability_zone  = var.availability_zone
  common_tags        = var.common_tags
}

module "security_group" {
  source = "../../modules/security_group"

  environment        = var.environment
  vpc_id             = module.network.vpc_id
  ssh_allowed_cidr   = var.ssh_allowed_cidr
  http_allowed_cidrs = ["0.0.0.0/0"]
  common_tags        = var.common_tags
}

module "ec2" {
  source = "../../modules/ec2"

  environment       = var.environment
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  subnet_id         = module.network.public_subnet_id
  security_group_id = module.security_group.security_group_id
  common_tags       = var.common_tags
}
