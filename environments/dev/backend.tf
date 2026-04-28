terraform {
  backend "s3" {
    bucket         = "asignment-1-terraform-state-34-238-244-58"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "asignment-1-terraform-locks"
    encrypt        = true
  }
}
