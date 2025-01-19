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

variable "security_group_name" {
    default = "allow"
    type = string
}

variable "security_group_description" {
    default = "allowing SSH access"
    type = string
}

variable "ssh_port" {
    default = 22
    type = string
}

variable "protocol" {
    default = "tcp"
    type = string
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}




