output "instance_name" {
  description = "Name of the Cloud SQL instance"
  value       = google_sql_database_instance.instance.name
}

output "database_name" {
  description = "Name of the database"
  value       = google_sql_database.database.name
}

output "user_name" {
  description = "Name of the database user"
  value       = google_sql_user.user.name
}