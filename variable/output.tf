output "instance_info" {                          
    value = aws_instance.db.id                  # here aws_instance.db taken from ec2.tf check once   #if u give id it will present only public public_ip
}