resource "google_compute_firewall" "firewall_rules" {
  for_each = var.firewall_rules
  name     = each.key
  network  = var.network

  allow {
    protocol = each.value.protocol
    ports    = each.value.ports
  }

  source_ranges = each.value.source_ranges
  target_tags   = each.value.target_tags
  project       = var.project_id
}
