variable "vnet_name" {
    type        = string
    default     = ""
}
variable "address_space" {
    type        = list(string)
    default     = [""]
}
variable "location" {
    type        = string
    default     = ""
}
variable "resource_group_name" {
    type        = string
    default     = ""
}
variable "subnet_name" {
    type        = string
    default     = ""
}
variable "subnet_prefixes" {
    type        = list(string)
    default     = [""]
}
