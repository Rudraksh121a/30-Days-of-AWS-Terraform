terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.23.0"
    }
  }
}

resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"

resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-demo-bucket-rudra121a" 
}
