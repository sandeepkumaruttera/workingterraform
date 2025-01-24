locals {
    ami = "ami-09c813fb71547fc4f"
    sg_id = "sg-04ab8e31f38c461d6"                     #security group are list that why we kept []*
#    instance_type = "t3.micro"
    instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
    tags = {                                                                 # {} flower brucket started that why tags are we called as maps
        Name = "locals"                                                  # name is db instance name it is map ...   #what ever we keep in tags will create instance name
    } 
}


#count and count.index will not work in locals
