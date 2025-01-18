resource "aws_instance" "db" {
  ami           = "ami-09c813fb71547fc4f"
  vpc_security_group_ids = [aws_security_group.allow.id]    #security group are list that why we kept []*
  instance_type = "t3.micro"

    tags = {
        Name = "helloWorld"
    } 
}


resource "aws_security_group" "allow" {
    name = "allow"
    description = "allowing SSH access"

    #terraform block
    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
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
