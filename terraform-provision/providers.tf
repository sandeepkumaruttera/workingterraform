terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "remote-state-sandeep"
    key    = "remote-state-for-each"
    region = "us-east-1"
    dynamodb_table = "sandeep-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}
