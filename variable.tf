/*/variable "project_id" {
  description = "The ID of the project where this VPC will be created"
  type        = string
}

variable "network_name" {
  description = "The name of the network being created"
  type        = string
}

variable "description" {
  type        = string
  description = "An optional description of this resource. The resource must be recreated to modify this field."
  default     = ""
}
variable "auto_create_subnetworks" {
  type        = bool
  description = "When set to tr"
  default     = false
}  

variable "mtu" {
    type = number
    description = "value"
    default = 0
}
/*/