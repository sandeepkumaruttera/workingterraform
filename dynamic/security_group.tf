#dynamic loop value must be set in "list" 

resource "aws_security_group" "dynamic_allow" {                                      #need to write at vpc_security_group_ids
    name = "allow_ports"
    description = "allowing ports 22,8080,3306,80"

    #terraform block
    dynamic "ingress" {
    for_each = var.aws_security_group                                                                  #here every thing listed in variable.tf file check once
        content {
            from_port        = ingress.value["port"]
            to_port          = ingress.value["port"]
            protocol         = ingress.value["protocol"]
            cidr_blocks      = ingress.value["cidr_blocks"]
        }
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
