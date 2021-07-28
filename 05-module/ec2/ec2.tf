resource "aws_instance" "Generic" {
  ami                    = "ami-074df373d6bafa625"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [var.SG_ID]

  tags                   = {
    Name                 = "Generic"
  }
}
  variable "SG_ID" {}

provider "aws" {
  region                 = "us-east-1"
}