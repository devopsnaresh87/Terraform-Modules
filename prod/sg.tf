module "prod_sg_1" {
  source        = "../modules/sg"
  vpc_name      = module.prod_vpc_1.vpc_name
  vpc_id        = module.prod_vpc_1.vpc_id
  environment   = module.prod_vpc_1.environment
  service_ports = ["456", "789", "8756", "9005"]
}