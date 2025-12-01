terraform {
    backend "s3" {
      bucket = "my-terraform-state-rudraksh-123456"
      key    = "dev/terraform.tfstate"
      region = "us-east-1"
      encrypt = true
      use_lockfile = true
    }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.23.0"
    }
  }
}

provider "aws" {
  
  region = "us-east-1"

}

resource "aws_s3_bucket" "my_first_bucket" {
  bucket = "my-first-terraform-bucket-rudrakshk-123456"

  tags = {
    Name        = "My first terraform bucket"
    Environment = "Dev"
  }
}
