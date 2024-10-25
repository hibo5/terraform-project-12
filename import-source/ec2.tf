
resource "aws_instance" "web" {
  ami                                  = "ami-00f251754ac5da7f0"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1c"
  instance_type                        = "t2.medium"
  ipv6_address_count                   = 0
  key_name                             = "webserver"
  monitoring                           = false
  security_groups                      = ["launch-wizard-5"]
  subnet_id                            = "subnet-00476697a452c6809"
  tags = {
    Name = "dev"
  }
}

