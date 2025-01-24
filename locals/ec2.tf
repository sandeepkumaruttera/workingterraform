resource "aws_instance" "db" {                                               #syntax of instance name don't chamge it
  ami           = local.ami
  vpc_security_group_ids = [local.sg_id]                    #security group are list that why we kept []*
  instance_type = local.instance_type
  tags = local.tags
}



