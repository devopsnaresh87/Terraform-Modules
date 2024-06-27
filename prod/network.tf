module "prod_vpc_1" {
  source             = "../modules/network"
  vpc_cidr           = "172.16.0.0/16"
  vpc_name           = "prod_vpc_1"
  environment        = "prod"
  public_cidr_block  = ["172.16.1.0/24", "172.16.2.0/24", "172.16.3.0/24"]
  private_cidr_block = ["172.16.10.0/24", "172.16.20.0/24", "172.16.30.0/24"]
  azs                = ["us-east-1a", "us-east-1b", "us-east-1c"]
  natgw_id           = module.prod_natgw_1.natgw_id
}
