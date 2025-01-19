variable "instance_name" {
    type = string
    default = "DB"
}


variable "image_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "RHEL Image id"
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