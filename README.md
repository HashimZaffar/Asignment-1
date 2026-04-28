# Assignment 1: Multi-Environment Terraform Architecture

## Overview

This project demonstrates a reusable multi-environment Terraform architecture for AWS. It deploys separate `dev`, `staging`, and `prod` environments using shared Terraform modules and environment-specific configuration.

The project uses a folder-based environment strategy, remote state storage with Amazon S3, and state locking with DynamoDB. Each environment has a separate Terraform state file to reduce the risk of cross-environment changes.

## Architecture

Each environment deploys:

- VPC
- Public subnet
- Internet Gateway
- Route table
- Security group
- EC2 instance
- Environment-specific tags

## Project Structure

```text
Asignment-1/
├── modules/
│   ├── network/
│   ├── security_group/
│   └── ec2/
└── environments/
    ├── dev/
    ├── staging/
    └── prod/
