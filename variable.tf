variable "company_name" {
      description = "Company Name"
      type = string
      default = "Drone-shuttles"
}

variable "environment" {
      description = "Environment Name"
      type = string
      default = "dev"
}

variable "resoure_group_name" {
      description = "Resource Group Name"
      type = string
      default = "front-door"
}

variable "resoure_group_location" {
      description = "Resource Group Location"
      type = string
      default = "west US"
}

variable "front_door_name" {
      description = "front door Name"
      type = string
      default = "voordeurtje1"

}

variable "routing_rule_name" {
      description = "routing rule Name"
      type = string
      default = "rr1"
}

variable "backend_pool_load_balancing" {
      description = "backend pool Name"
      type = string
      default = "lb1"
}

variable "backend_pool_health_probe" {
      description = "routing rule Name"
      type = string
      default = "hp1"
}

variable "backend_pool_name" {
      description = "backend pool Name"
      type = string
      default = "bp1"
}

variable "frontend_endpoint" {
      description = "frontend_endpoint name"
      type = string
      default = "fe1"
}

variable "frontend_endpoint_hostname" {
      description = "frontend_endpoint hostname"
      type = string
      default = ".azurefd.net"
}

