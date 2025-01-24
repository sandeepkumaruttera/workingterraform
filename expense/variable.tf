variable "instance_name" {
    type = list(string)
    default = ["DB","backend","frontend"]
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


variable "common_tags" {                                        
    default = {                                                                    # tags are list that why written default = {}
        Project = "Expense"
        Environment = "Dev"
        Terraform = "true"
    }
}

#sg variable

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

variable "zone_id" {
    type = string
    default = "Z03688782L8GUNVYZSFY0"
}

variable "domain_name" {
    type = string
    default = "daws78s.online"                      #frontend domain nam eneed to take
}


