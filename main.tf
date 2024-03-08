terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test_instance" {
  ami           = "ami-07761f3ae34c4478d"  # Example AMI ID, replace with your own
  instance_type = "t2.micro"
  
  tags = {
    Name = "test_instance_github_action"
  }
}
