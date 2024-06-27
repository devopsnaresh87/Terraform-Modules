output "vpc_name" {
  value = module.prod_vpc_1.vpc_name
}
output "vpc_id" {
  value = module.prod_vpc_1.vpc_id
}
output "pub_subnets" {
  value = module.prod_vpc_1.public_subnets_id
}
output "pvt_subnets" {
  value = module.prod_vpc_1.private_subnets_id
}


