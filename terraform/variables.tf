variable "subscription_id" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "aks_subnet_prefix" {
  type = list(string)
}

variable "appgw_subnet_prefix" {
  type = list(string)
}
variable "aks_subnet_name" {
  type = string
}

variable "appgw_subnet_name" {
  type = string
}

variable "acr_name" {
  type = string
}

variable "acr_sku" {
  type = string
}

variable "admin_enabled" {
  type = bool
}

variable "dns_prefix" {
  type = string
}

variable "node_count" {
  type = number
}

variable "vm_size" {
  type = string
}

variable "aks_name" {
  type = string
}

variable "keyvault_name" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "container_name" {
  type = string
}