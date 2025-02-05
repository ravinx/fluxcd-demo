variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "network" {
  description = "The VPC network"
  type        = string
}

variable "firewall_rules" {
  description = "Map of firewall rules"
  type        = map(map(list(string)))
}
