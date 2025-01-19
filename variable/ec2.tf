resource "aws_instance" "db" {
  ami           = var.image_id
  #vpc_security_group_ids = [aws_security_group.allow.id]    #security group are list that why we kept []*
  instance_type = var.instance_type                                                            
    tags = var.tags                                                  
}


resource "aws_security_group" "allow" {
    name = var.security_group_name
    description = var.security_group_description

    #terraform block
    ingress {
        from_port        = var.ssh_port
        to_port          = var.ssh_port
        protocol         = var.protocol
        cidr_blocks      = var.cidr_blocks
    }

    egress {
        from_port        = 0 # from 0 to 0 means, opening all protocols
        to_port          = 0
        protocol         = "-1" # -1 all protocols
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow"
        CreatedBy = "Sandeep"
    }
}



# left side things are called as arguements, right side are values.
# flower brucket started that why tags are we called as maps
# name is db instance name it is map ...
