provider "google" {
  project = var.project
  region  = var.region
}

terraform {
  backend "gcs" {
    project  = var.project
    location = var.region
    bucket   = var.state_bucket
    prefix   = "terraform/state"

  }
}
