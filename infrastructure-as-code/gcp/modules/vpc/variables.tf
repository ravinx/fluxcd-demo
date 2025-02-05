variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "subnets" {
  description = "Map of subnets with their CIDR ranges and regions"
  type        = map(map(string))
}
