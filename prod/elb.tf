module "prod_elb_1" {
  source          = "../modules/elb"
  environment     = module.prod_vpc_1.environment
  nlbname         = "prod-nlb"
  subnets         = module.prod_vpc_1.public_subnets_id
  tgname          = "prod-nlb-tg"
  vpc_id          = module.prod_vpc_1.vpc_id
  private_servers = module.prod_compute_1.private_servers

}