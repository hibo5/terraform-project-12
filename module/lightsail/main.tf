resource "aws_lightsail_instance" "server" {
  name              = var.instance_name
  availability_zone = var.az
  blueprint_id      = var.b_print
  bundle_id         = var.bundle_id
  //user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Terraform</h1>' | sudo tee /var/www/html/index.html"
  key_pair_name = var.key-name
  tags ={
    Team = var.Team
    env  = var.env
    create_by = "Terraform"
  }
}