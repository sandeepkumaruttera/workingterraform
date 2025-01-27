# "for_each" argument must be a map, or set of string

resource "aws_instance" "loop-for-each" {
   # for_each = var.instance.name
    for_each = {                                                               # this is map remember
        db = "t3.micro"
        backend = "t3.small"
        frontend = "t3.micro"
    }
  ami = data.aws_ami.ami_expense.id
  vpc_security_group_ids = ["sg-0ff5ebb7b4219f91a"]
  instance_type = each.value                            #db = "t3.micro" here key=db ,value = t3.micro for what ever we do here

    tags = merge (
        var.common_tags,                                     #merge both tags and instance names
        {
            Name = each.key
            module = each.key
        } 
    )     
}



#each.key we kept for_each = var.instance_names means it will take , db = instance_type  here key = db , value = instance_type


