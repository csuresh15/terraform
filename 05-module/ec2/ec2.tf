resource "aws_instance" "Generic" {
  ami                    = "ami-074df373d6bafa625"
  count                  = 2
  instance_type          = var.TYPE
  vpc_security_group_ids = [var.SG_ID]

  tags                   = {
    Name                 = "Generic-${count.index}"
  }
}
  variable "SG_ID" {}
   variable "TYPE" {}

output "Private_IP" {
  value                 = aws_instance.Generic.*.private_ip
}