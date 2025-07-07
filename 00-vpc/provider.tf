terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0"
    }
  }

  backend "s3" {
    bucket = "19s-bucket "
    key    = "vpc"
    region = "us-east-1"
    dynamodb_table = "19s-bucket-lock"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}