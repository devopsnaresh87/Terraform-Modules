module "dev_natgw_1" {
  source           = "../modules/nat"
  public_subnet_id = module.dev_vpc_1.public_subnets_id_1
  vpc_name         = module.dev_vpc_1.vpc_name
}

module "dev_natgw_2" {
  source = "../modules/nat"
  public_subnet_id = module.dev_vpc_2.public_subnet_id_2
  vpc_name = module.dev_vpc_2.vpc_name
}
