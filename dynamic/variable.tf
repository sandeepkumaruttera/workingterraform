#dynamic loop value must be set in "list" 
                                                                           
variable "aws_security_group" {
    type = list
    default = [                                                                              # all these are ingrees
        {                                                                                    ##outbound all are 0 and internet gateway omnly##
          port = 22,
          protocol =  "tcp" 
          cidr_blocks = ["0.0.0.0/0"] 
        },
        {
          port = 8080,
          protocol =  "tcp"                                                          
          cidr_blocks = ["0.0.0.0/0"] 
        },
        {
          port = 3306,
          protocol =  "tcp" 
          cidr_blocks = ["0.0.0.0/0"] 
        },
        {
          port = 80,
          protocol =  "tcp" 
          cidr_blocks = ["0.0.0.0/0"] 
        }
    ]

}