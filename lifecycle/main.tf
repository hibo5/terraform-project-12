provider "aws" {
    region = "us-east-1"
  }

  resource "aws_instance" "server" {
    ami = "ami-00f251754ac5da7f0"
    instance_type = "t2.micro"
    lifecycle {
      create_before_destroy = true
    }
    
    }
    
  //resource "aws_iam_user" "user1" {
    //name = "developer2024"
  //}