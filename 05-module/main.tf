module "SG" {
  source = "./sg"
}
module "EC2" {
  source = "./ec2"
  //SG_ID  = module.SG.SG_ID
  SG_ID = module.SG.SG_ID
}