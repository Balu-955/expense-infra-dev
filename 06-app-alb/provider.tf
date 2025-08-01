terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "maahi-remote-state"
    key    = "expense-infra-dev"
    region = "us-east-1"
    dynamodb_table = "maahi-locking"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}