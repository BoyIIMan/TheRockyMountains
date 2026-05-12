variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "vnet_name" {}
variable "vnet_address_space" {}

variable "subnets" {
  type = list(object({
    name           = string
    address_prefix = string
  }))
}