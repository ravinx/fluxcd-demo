variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
  type        = string
}

variable "region" {
  description = "The region for the GKE cluster"
  type        = string
}

variable "network" {
  description = "The VPC network for the GKE cluster"
  type        = string
}

variable "subnetwork" {
  description = "The subnetwork for the GKE cluster"
  type        = string
}

variable "master_ipv4_cidr_block" {
  description = "The CIDR block for the GKE master IP range"
  type        = string
}

variable "authorized_cidr_block" {
  description = "The CIDR block for authorized access to the GKE master"
  type        = string
}

variable "node_count" {
  description = "The initial number of nodes in the default node pool"
  type        = number
}

variable "min_node_count" {
  description = "The minimum number of nodes in the default node pool"
  type        = number
}

variable "max_node_count" {
  description = "The maximum number of nodes in the default node pool"
  type        = number
}

variable "machine_type" {
  description = "The machine type for the nodes"
  type        = string
}

variable "disk_size_gb" {
  description = "The disk size for the nodes"
  type        = number
}