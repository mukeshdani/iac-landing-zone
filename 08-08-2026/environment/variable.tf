variable "rgs" {
  type = map(object({
    name     = string
    location = string
    create   = bool
  }))
}

variable "vnet" {
  type = map(object({
    name                = string
    resource_group_name = string
    address_space       = list(string)
    create              = bool
  }))
}
