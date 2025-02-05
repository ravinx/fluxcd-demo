output "iam_bindings" {
  description = "Map of roles and their members"
  value       = google_project_iam_binding.roles
}
