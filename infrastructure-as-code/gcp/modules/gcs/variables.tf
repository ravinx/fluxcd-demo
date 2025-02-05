variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "bucket_name" {
  description = "The name of the GCS bucket"
  type        = string
}

variable "location" {
  description = "The location of the GCS bucket"
  type        = string
}

variable "storage_class" {
  description = "The storage class of the GCS bucket"
  type        = string
  default     = "STANDARD"
}

variable "kms_key_name" {
  description = "The KMS key for encryption"
  type        = string
}

variable "lifecycle_rule_age" {
  description = "The age for the lifecycle rule"
  type        = number
  default     = 30
}

variable "lifecycle_rule_action" {
  description = "The action for the lifecycle rule"
  type        = string
  default     = "Delete"
}

variable "role" {
  description = "The IAM role for the bucket"
  type        = string
}

variable "members" {
  description = "The members to assign the role"
  type        = list(string)
}