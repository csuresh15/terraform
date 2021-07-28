resource "aws_instance" "Generic" {
  ami                    = "ami-074df373d6bafa625"
  instance_type          = [var.TYPE]
  count                  = 2
  vpc_security_group_ids = [var.SG_ID]

  tags                   = {
    Name                 = "Generic${count.index}"
  }
}
  variable "SG_ID" {}
   variable "TYPE" {}

