resource "aws_instance" "db" {
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = ["sg-0ff5ebb7b4219f91a"] 
    instance_type = "t3.micro"
    tags = {
        Name = "db"
    }
}


