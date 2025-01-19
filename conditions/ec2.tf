resource "aws_instance" "db" {
  ami           = var.image_id
  #vpc_security_group_ids = [aws_security_group.allow.id]    #security group are list that why we kept []*
  instance_type = var.instance_name == "DB" ? "t3.small" : "t3.micro"                                                           
  tags = var.tags                                                  
}


