resource "google_compute_global_forwarding_rule" "lb" {
  name       = var.lb_name
  target     = google_compute_target_http_proxy.lb.self_link
  port_range = "80"
  project    = var.project_id
}

resource "google_compute_target_http_proxy" "lb" {
  name    = "${var.lb_name}-proxy"
  url_map = google_compute_url_map.lb.self_link
  project = var.project_id
}

resource "google_compute_url_map" "lb" {
  name            = "${var.lb_name}-url-map"
  default_service = google_compute_backend_service.lb.self_link
  project         = var.project_id
}

resource "google_compute_backend_service" "lb" {
  name        = "${var.lb_name}-backend"
  port_name   = "http"
  protocol    = "HTTP"
  timeout_sec = 10

  backend {
    group = var.backend_instance_group
  }

  health_checks = [google_compute_http_health_check.lb.self_link]
  project       = var.project_id
}

resource "google_compute_http_health_check" "lb" {
  name               = "${var.lb_name}-health-check"
  request_path       = "/"
  check_interval_sec = 5
  timeout_sec        = 5
  project            = var.project_id
}
