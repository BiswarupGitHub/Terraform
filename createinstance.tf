provider "aws" {
        version = "~> 3.27"
        access_key = "*****"
        secret_key = "***********"
        region = "us-west-1"
 }

resource "aws_instance" "terraform" {
  ami           = "ami-01f87c43e618bf8f0"
  instance_type = "t2.micro"
  key_name = "aws"
 
  tags = {
    Name = "terraform_instance"
  }
 }
