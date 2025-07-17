resource "aws_key_pair" "tools" {
  key_name   = "tools"
   #you can paste the public key directly like this
  #public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIL6ONJth+DzeXbU3oGATxjVmoRjPepdl7sBuPzzQT2Nc sivak@BOOK-I6CR3LQ85Q"
  public_key = file("~/.ssh/tools.pub")
  # ~ means windows home directory
}

resource "aws_instance" "db" {
  ami                    = "ami-0a7d80731ae1b2435"
  instance_type          = "t3.medium"
  vpc_security_group_ids = ["sg-031a4da7fbd0d4df0"]
  key_name = aws_key_pair.tools.key_name

  
  tags = {
    Name   = "helloWorld"
    module = "database"
  }
}