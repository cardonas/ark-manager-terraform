variable "project" {
  description = "Google Cloud project ID"
  type        = string
}

variable "region" {
  description = "Google Cloud region"
  type        = string
}

variable "function_name" {
  description = "Name of the Cloud Function"
  type        = string
}

variable "artifact_bucket" {
  description = "Bucket name for the Cloud Function source"
  type        = string
}

variable "function_source" {
  description = "Path to the Cloud Function source archive"
  type        = string
}

variable "service_account_email" {
  description = "Service account email for the Cloud Function"
  type        = string
}
