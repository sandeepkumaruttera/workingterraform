resource "aws_instance" "db" {                                               #syntax of instance name don't chamge it
  ami  = data.aws_ami.ami_id.id
  vpc_security_group_ids = ["sg-0ff5ebb7b4219f91a" ]                     #security group are list that why we kept []*
  instance_type = "t3.medium"
  user_data = file("workshop.sh") 

    tags = {
      Name  = "data-server"
    }                                                                 # {} flower brucket started that why tags are we called as maps                                                                                  
}

