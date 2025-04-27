resource "aws_instance" "db" {
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = ["sg-0ff5ebb7b4219f91a"] 
    instance_type = "t3.micro"
    tags = {
        Name = "db"
    }


    provisioner "local-exec" {
       command = "echo ${self.private_ip} >> private_ips.txt"                         # self means aws_instance.web
    }

    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = self.public_ip
    }

    provisioner "remote-exec" {
       inline = [
            "sudo dnf install mysql -y",                                           #remote state means running  inside remote machine 
            "sudo dnf install git -y",
            "sudo dnf install nginx -y",
            "sudo systemctl start nginx",            
       ] 
    }                 
}



