# modules/vpc/variables.tf
variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "network_name" {
  description = "The name of the VPC network."
  type        = string
}

variable "auto_create_subnetworks" {
  description = "If true, the network is created in auto subnet mode. If false, custom subnet mode."
  type        = bool
  default     = false
}

variable "mtu" {
  description = "The network MTU. Must be a value between 1460 and 1500 inclusive."
  type        = number
  default     = 1460
}

variable "routing_mode" {
  description = "The network's routing mode (REGIONAL or GLOBAL)."
  type        = string
  default     = "REGIONAL"
}

variable "subnets" {
  description = "A list of subnets to create within the VPC."
  type = list(object({
    name          = string
    ip_cidr_range = string
    region        = string
    stack_type    = optional(string, "IPV4_ONLY")
    purpose       = optional(string)
    role          = optional(string)
  }))
  default = []
}