module "SG" {
  source        = "./sg"
}
module "EC2" {
  depends_on = [module.SG]
  source        = "./ec2"
  //SG_ID       = module.SG.SG_ID
  SG_ID         = module.SG.SG_ID
  TYPE          = "t3.small"
}
provider "aws" {
  region                 = "us-east-1"
}
output "Private_IP" {
  value                  = module.EC2.Private_IP
}