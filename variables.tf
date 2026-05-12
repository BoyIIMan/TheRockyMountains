variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "vnet_name" {
  type = string
}

variable "vnet_address_space" {
  type = list(string)
}

variable "subnets" {
  type = list(object({
    name           = string
    address_prefix = string
  }))
}