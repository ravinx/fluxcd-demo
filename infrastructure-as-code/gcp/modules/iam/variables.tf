variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "iam_bindings" {
  description = "Map of roles to list of members"
  type        = map(list(string))
}
