resource "google_project_iam_binding" "roles" {
  for_each = var.iam_bindings
  project  = var.project_id
  role     = each.key
  members  = each.value
}
