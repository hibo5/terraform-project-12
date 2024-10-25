provider "aws" {
    region = "us-east-1"
  }

  import {
  to = aws_instance.web
  id = "i-0a7c8410e6b27422d"
}