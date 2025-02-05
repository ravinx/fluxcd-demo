resource "google_service_account" "service_account" {
  account_id   = var.account_id
  display_name = var.display_name
  project      = var.project_id
}

resource "google_project_iam_binding" "sa_roles" {
  for_each = var.roles
  project  = var.project_id
  role     = each.key
  members  = ["serviceAccount:${google_service_account.service_account.email}"]
}
