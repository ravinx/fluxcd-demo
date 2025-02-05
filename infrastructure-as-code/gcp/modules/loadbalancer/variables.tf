variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "lb_name" {
  description = "The name of the load balancer"
  type        = string
}

variable "backend_instance_group" {
  description = "The instance group for the backend"
  type        = string
}
