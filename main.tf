terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 4.19.0"
   }
 }
}

resource "aws_instance" "my_vm" {
 ami                       = "ami-07761f3ae34c4478d" //Ubuntu AMI
 instance_type             = "t2.micro"

 tags = {
   Name = "test-github-action",
 }
}
