# "for_each" argument must be a map, or set of string

resource "aws_route53_record" "expense" {
  for_each = aws_instance.loop-for-each
  zone_id = var.zone_id                                                            #zone id available at hostes zone
  name    = each.key == "frontend" ? var.domain_name : "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = "1"
  records = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip]
 
  # if records already exists
  allow_overwrite = true
}



#route 53 is hosted zone of public and private ip of instances