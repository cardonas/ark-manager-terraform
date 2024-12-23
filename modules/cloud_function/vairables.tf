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

variable "source_repo" {
  description = "Github repository for the source code"
  type = string
}

variable "service_account_email" {
  description = "Service account email for the Cloud Function"
  type        = string
}
