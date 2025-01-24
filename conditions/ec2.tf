resource "aws_instance" "db" {
  count = length(var.instance_name)  
  ami           = var.image_id
  #vpc_security_group_ids = [aws_security_group.allow.id]    #security group are list that why we kept []*
  instance_type = var.instance_name[count.index] == "DB" ? "t3.small" : "t3.micro"       #this is the conditions in terraform                                                       
  tags = {
    Name = var.instance_name[count.index]                                              #it will the name of instances accordingly
  }                                                 
}

 #this is the conditions in terraform 
 #expression ? "this will run if expression is true : "this will run if expression is false"





#here we done terraform count , and also written terraform conditions

