resource "aws_instance" "Generic" {
  ami           = "ami-074df373d6bafa625"
  instance_type = "t3.micro"
  vpc_security_group_ids = []

  tags          = {
    Name = "Generic"
  }
}
resource "aws_security_group" "ssh_allow" {
  name               = "allow_ssh"
  description        = "Allow SSH inbound traffic"

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
     }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags                = {
    Name              = "allow_ssh"
  }
}
output "ec2-attributes" {
  value = aws_security_group.ssh_allow
}
provider "aws" {
  region = "us-east-1"
}