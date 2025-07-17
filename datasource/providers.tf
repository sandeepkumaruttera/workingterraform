terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "draws26s"
    key    = "data-source"
    region = "us-east-1"
    dynamodb_table = "draws26s-dev"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}
