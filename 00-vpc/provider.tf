terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0"
    }
  }

  backend "s3" {
    bucket = "18s-remote-state"
    key    = "vpc"
    region = "us-east-1"
    dynamodb_table = "18s-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}