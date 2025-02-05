output "firewall_rules" {
  description = "Map of firewall rules"
  value       = google_compute_firewall.firewall_rules
}
