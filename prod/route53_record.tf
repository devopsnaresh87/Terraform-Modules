data "aws_route53_zone" "selected" {
  name         = "mediatree.in."
  private_zone = false
}


resource "aws_route53_record" "alias_route53_record" {
  zone_id = data.aws_route53_zone.selected.zone_id # Replace with your zone ID
  name    = "prod.mediatree.in"                    # Replace with your name/domain/subdomain
  type    = "A"

  alias {
    name                   = module.prod_elb_1.elb_dns_name
    zone_id                = module.prod_elb_1.zone_id
    evaluate_target_health = true
  }
}



