output "service_account_email" {
  description = "Email of the created service account"
  value       = google_service_account.service_account.email
}
