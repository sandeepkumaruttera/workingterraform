output "instance_info" {
    value = aws_instance.loop-for-each                                           # we can't write here public ip becuase there ar emultiple instances
}

output "ami_id" {
    value = data.aws_ami.ami_expense.id
}


#output "rf3" {
#    value = aws_route53_record.expense
#}