data "aws_route53_zone" "selected" {
  name         = "mediatree.in."
  private_zone = false
}


resource "aws_route53_record" "alias_route53_record" {
  zone_id = data.aws_route53_zone.selected.zone_id # Replace with your zone ID
  name    = "dev.medaitree.in"                    # Replace with your name/domain/subdomain
  type    = "A"

  alias {
    name                   = module.dev_elb_1.elb_dns_name
    zone_id                = module.dev_elb_1.zone_id
    evaluate_target_health = true
  }
}



