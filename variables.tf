variable "project_name"{
    type = string  
}

variable "environment"{
    type = string
}

variable "common_tags"{
    type = map
}

variable "vpc_cidr"{
    type = string
    default = "10.0.0.0/16"
}

variable "hostnames"{
    type = bool
    default = true
}

variable "vpc_tags"{
    type = map
    default = {}
}

variable "igw_tags"{
    type = map
    default = {}
}

variable "public_subnet_cidrs"{
    type = list
    validation{
        condition = length(var.public_subnet_cidrs) == 2
        error_message = "Please provide 2 valida public subnet cidr's"
    }
}

variable "public_subnet_cidrs_tags"{
    default = {}
}

variable "private_subnet_cidrs"{
    type = list
    validation{
        condition = length(var.private_subnet_cidrs) == 2
        error_message = "Please provide 2 valid private subnet cidr's"
    }
}

variable "private_subnet_cidrs_tags"{
    default = {}
}

variable "database_subnet_cidrs"{
    type = list
    validation{
        condition = length(var.database_subnet_cidrs) == 2
        error_message = "Please provide 2 valid database subnet cidr's"
    }
}

variable "db_subnet_group_tags"{
     default = {}
}

variable "database_subnet_cidrs_tags"{
    default = {}
}

variable "nat_gateway_tags"{
    default = {}
}

variable "public_route_table_tags"{
    default = {}
}

variable "private_route_table_tags"{
    default = {}
}

variable "database_route_table_tags"{
    default = {}
}

variable "is_peering_required"{
    type = bool
    default = false
}

variable "acceptor_vpc_id"{
    default = ""
}

variable "vpc_peering_tags"{
    type = map
    default = {}
}

