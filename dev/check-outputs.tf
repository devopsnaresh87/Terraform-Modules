output "vpc_name" {
  value = module.dev_vpc_1.vpc_name
}
output "vpc_id" {
  value = module.dev_vpc_1.vpc_id
}
output "pub_subnets" {
  value = module.dev_vpc_1.public_subnets_id
}
output "pvt_subnets" {
  value = module.dev_vpc_1.private_subnets_id
}
output "pub_subnets_1" {
  value = module.dev_vpc_1.public_subnets_id_1
}
output "public_servers" {
  value = module.dev_compute_1.public_servers
}
output "private_servers" {
  value = module.dev_compute_1.private_servers
}
