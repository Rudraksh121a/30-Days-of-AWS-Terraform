provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "main-vpc"
  }
}


resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-demo-bucket-${aws_vpc.main_vpc.id}"  

  tags = {
    Name = "example-bucket"
    VPC  = aws_vpc.main_vpc.id
  }
}
