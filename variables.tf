variable "project" {
  description = "The Google Cloud project"
  type        = string
}

variable "region" {
  description = "The region for the resources"
  type        = string
  default     = "us-central1"
}

variable "env" {
  description = "Environment identifier"
  type        = string
  default     = "dev" # Default value if not set in GitHub Actions
}

variable "function_name" {
  description = "Name of the Cloud Function"
}

variable "state_bucket" {
  description = "Bucket name for Terraform state"
  type        = string
  default     = "tfstate"
}
