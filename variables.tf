variable "project" {
  description = "The Google Cloud project"
  type        = string
}

variable "region" {
  description = "The region for the resources"
  type        = string
  default     = "us-central1"
}

variable "source_repo" {
  description = "Source Repo Url"
  type = string
  default = ""
}

variable "env" {
  description = "Environment identifier"
  type        = string
  default     = "dev" # Default value if not set in GitHub Actions
}

variable "state_bucket" {
  description = "Bucket name for Terraform state"
  type        = string
  default     = "tfstate"
}

variable "function_name" {
  description = "function_name"
  type        = string
  default     = ""
}
