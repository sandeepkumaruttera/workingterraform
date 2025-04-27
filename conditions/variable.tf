variable "instance_name" {
    default = ["DB","backend","frontend"]
    type = list
}


variable "image_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}


variable "tags" {                                        
    default = {                                                                    # tags are list that why written default = {}
        Project = "Expense"
        Environment = "Dev"
        Module = "DB"
        Name = "DB"
    }
}