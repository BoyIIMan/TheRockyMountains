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

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "nsgs" {
  type = list(object({
    name = string
  }))

}