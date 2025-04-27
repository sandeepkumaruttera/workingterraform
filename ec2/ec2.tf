resource "aws_instance" "db" {                                               #syntax of instance name don't chamge it
  ami           = "ami-09c813fb71547fc4f"
  vpc_security_group_ids = ["sg-0ff5ebb7b4219f91a"]                     #security group are list that why we kept []*
  instance_type = "t3.medium"

    tags = {                                                                 # {} flower brucket started that why tags are we called as maps
        Name = "helloWorld"
        module = "database"                                                  # name is db instance name it is map ...   #what ever we keep in tags will create instance name
    } 
}



