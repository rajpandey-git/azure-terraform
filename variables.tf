  variable "resource_group_location" {
  type        = string
  default     = "westus"
  description = "Location of the resource group."
}


variable "resource_group_name" {
  type        = string
  default     = "akeyless-rg"
  description = "Resource group name in your Azure subscription."
}