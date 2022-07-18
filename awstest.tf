provider "aws" {
  region = "us-east-1"
}

resource "aws_ec2_host" "test" {
  instance_type     = "t2.micro"
  }