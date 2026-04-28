resource "aws_security_group" "this" {
  name        = "${var.environment}-web-sg"
  description = "Security group for ${var.environment} EC2 instance"
  vpc_id      = var.vpc_id

  ingress {
    description = "Allow SSH from trusted IP range"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.ssh_allowed_cidr]
  }

  ingress {
    description = "Allow HTTP traffic"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.http_allowed_cidrs
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(var.common_tags, {
    Name = "${var.environment}-web-sg"
  })
}
