resource "google_sql_database_instance" "instance" {
  name             = var.instance_name
  database_version = var.database_version
  region           = var.region
  project          = var.project_id

  settings {
    tier              = var.tier
    activation_policy = "ALWAYS"
    availability_type = var.availability_type

    ip_configuration {
      ipv4_enabled    = false
      private_network = var.network
    }

    backup_configuration {
      enabled = true
      binary_log_enabled = true
    }

    maintenance_window {
      day  = 7
      hour = 3
    }

    disk_autoresize = true
    disk_size       = var.disk_size
    disk_type       = var.disk_type

    database_flags {
      name  = "cloudsql_iam_authentication"
      value = "on"
    }
  }

  encryption_key_name = var.kms_key_name
}

resource "google_sql_database" "database" {
  name     = var.database_name
  instance = google_sql_database_instance.instance.name
  project  = var.project_id
}

resource "google_sql_user" "user" {
  name     = var.user_name
  instance = google_sql_database_instance.instance.name
  password = var.user_password
  project  = var.project_id
}