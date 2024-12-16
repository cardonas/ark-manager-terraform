resource "google_storage_bucket" "artifact_bucket" {
  name     = "ark-manager-artifacts-${var.env != "" ? var.env : "dev"}"
  location = var.region
}


