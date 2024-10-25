provider "aws" {
    region = "us-east-1"
  
}

/*
resource "aws_instance" "server" {
    count = 2
  ami = "ami-00f251754ac5da7f0"
  instance_type = "t2.micro"
tags = {
  Name ="Dev-${count.index +1}"
}
}

output "public_ip" {
    value = aws_instance.server[*].public_ip
  }


locals {
  env = "dev"
}
output "v" {
    value = local.env
  }

resource "aws_iam_user" "n1" {

  count = 5
  name = "Terraform-${count.index +1}"
}
*/
variable "username" {
    type = list(string)
    default = [ "ansible", "Devops", "developer" ]
}
variable "instance_type" {
    default = ["t2.micro", "t3.small", "t2.medium"]
  
}
resource "aws_iam_user" "n1" {
    for_each = toset(var.username)
    name = each.key
  }

resource "aws_instance" "sv1" {
    for_each = toset(var.instance_type)
   instance_type = each.key
  }
