output "policy_name" {
  description = "Name of the firewall policy"
  value       = google_compute_firewall_policy.policy.name
}

output "policy_id" {
  description = "ID of the firewall policy"
  value       = google_compute_firewall_policy.policy.id
}