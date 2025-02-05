variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "short_name" {
  description = "The short name of the firewall policy"
  type        = string
}

variable "description" {
  description = "The description of the firewall policy"
  type        = string
}

variable "rules" {
  description = "Map of firewall policy rules"
  type = map(object({
    description    = string
    priority       = number
    action         = string
    direction      = string
    src_ip_ranges  = list(string)
    dest_ip_ranges = list(string)
  }))
}