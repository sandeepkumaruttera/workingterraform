
# "for_each" argument must be a map, or set of strings

variable "instance_names" {
    type = map
    default = {                                                               # this is map remember
        db = "t3.micro"
        backend = "t3.small"
        frontend = "t3.micro"
    }
}

variable "common_tags" {
    type = map
    default = {
        project = "expense"
        terraform = "true"
    }
}


variable "domain_name" {
    type = string
    default = "daws78s.online"
}

variable "zone_id" {
    type = string                                                      # zone_id is hosted zone there it is available
    default = "Z03688782L8GUNVYZSFY0"
}
