variable "github_owner" {
  type = string
}

variable "github_token" {
  type = string
  sensitive = true
}

variable "repository_name" {
  type    = string
  default = "test-provider"
}

variable "repository_visibility" {
  type    = string
  default = "private"
}

variable "branch" {
  type    = string
  default = "main"
}

variable "target_path" {
  type    = string
  default = "dev"
}

variable "flux_version" {
  type = string
  default = "v2.2.3"
}

variable "kind_cluster_name" {
  type = string
  default = "kind-dev"
}
