output "vpc_name" {
  description = "Name of the VPC"
  value       = google_compute_network.vpc.name
}

output "subnets" {
  description = "Map of subnets"
  value       = google_compute_subnetwork.subnet
}
