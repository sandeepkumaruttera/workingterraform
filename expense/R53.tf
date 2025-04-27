resource "aws_route53_record" "expense" {
  count = length(var.instance_name)
  zone_id = var.zone_id
  name    = var.instance_name[count.index] == "frontend" ? var.domain_name : "${var.instance_name[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = "1"
  records = var.instance_name[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]   ###[aws_instance.expense[count.index].public_ip]we take because it will take public_ip from whole data ###
 
  # if records already exists
  allow_overwrite = true
}



#route 53 is hosted zone of public and private ip of instances