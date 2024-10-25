provider "aws" {
  region = "us-east-1"

}
module "aws_lightsail_sever" {
  source        = "../lightsail"
  instance_name = "qa-dev-sever"
  env           = "qa"
  Team          = "qa"
  az            = "us-east-1a"
  key-name      = "default"
  b_print       = "amazon_linux_2023"
  bundle_id     = "small_1_0"
}