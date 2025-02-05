resource "google_compute_firewall_policy" "policy" {
  parent      = "projects/${var.project_id}"
  short_name  = var.short_name
  description = var.description
}

resource "google_compute_firewall_policy_rule" "rule" {
  for_each           = var.rules
  firewall_policy    = google_compute_firewall_policy.policy.name
  description        = each.value.description
  priority           = each.value.priority
  action             = each.value.action
  direction          = each.value.direction
  match {
    src_ip_ranges    = each.value.src_ip_ranges
    dest_ip_ranges   = each.value.dest_ip_ranges
    layer4_configs {
      ip_protocol = "tcp"
      ports       = [8080]
    }

    layer4_configs {
      ip_protocol = "udp"
      ports       = [22]
    }
  }
}