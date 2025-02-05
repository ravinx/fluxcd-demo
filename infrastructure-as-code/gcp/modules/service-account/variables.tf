variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "account_id" {
  description = "The ID of the service account"
  type        = string
}

variable "display_name" {
  description = "The display name of the service account"
  type        = string
}

variable "roles" {
  description = "Map of roles to assign to the service account"
  type        = map(list(string))
}
