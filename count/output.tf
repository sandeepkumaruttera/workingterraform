output "public_ip" {
    value = aws_instance.db                                           # we can't write here public ip becuase there ar emultiple instances
}