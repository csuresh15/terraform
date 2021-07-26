resource "aws_instance" "Generic" {
  ami           = "ami-074df373d6bafa625"
  instance_type = "t3.micro"
    tags        = {
     Name       = "Generic"
  }
}
//  provider "aws" {
//    region      = "us-east-1"
//  }
//  terraform {
//    backend "s3" {
//      bucket = "terraform-st-state"
//      key = "Generic/terraform.tfstate"
//      region = "us-east-1"
//    }
//  }
//resource "aws_instance" "sample" {
//  ami                   = "ami-074df373d6bafa625"
//  instance_type         = "t3.micro"
//  tags                  = {
//    Name                = "Sample"
//  }
//}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraformstateremote"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
    //dynamodb_table = "terraform"
  }
}
