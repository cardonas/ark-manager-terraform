resource "google_storage_bucket" "artifact_bucket" {
  name     = "artifacts-${var.env != "" ? var.env : "dev"}"
  location = var.region
}


