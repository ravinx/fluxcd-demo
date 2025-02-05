variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "instance_name" {
  description = "The name of the Cloud SQL instance"
  type        = string
}

variable "database_version" {
  description = "The database version"
  type        = string
  default     = "MYSQL_8_0"
}

variable "region" {
  description = "The region for the Cloud SQL instance"
  type        = string
}

variable "tier" {
  description = "The machine tier for the Cloud SQL instance"
  type        = string
  default     = "db-f1-micro"
}

variable "availability_type" {
  description = "The availability type for the Cloud SQL instance"
  type        = string
  default     = "ZONAL"
}

variable "network" {
  description = "The VPC network for the Cloud SQL instance"
  type        = string
}

variable "disk_size" {
  description = "The disk size for the Cloud SQL instance"
  type        = number
  default     = 10
}

variable "disk_type" {
  description = "The disk type for the Cloud SQL instance"
  type        = string
  default     = "PD_SSD"
}

variable "kms_key_name" {
  description = "The KMS key for encryption"
  type        = string
}

variable "database_name" {
  description = "The name of the database"
  type        = string
}

variable "user_name" {
  description = "The name of the database user"
  type        = string
}

variable "user_password" {
  description = "The password for the database user"
  type        = string
  sensitive   = true
}