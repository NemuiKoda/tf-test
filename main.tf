terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "ubuntu-ec2" {
  ami = "ami-03af039b3dc0fad33"
  instance_type = "t3.micro" 
  tags = {
    Name = "ec2_test"
  }
}
