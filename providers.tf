provider "google" {
  project = var.project
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = var.state_bucket
    prefix = "terraform/state/${var.env}"
  }
}
