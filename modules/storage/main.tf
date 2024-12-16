resource "google_storage_bucket" "artifact_bucket" {
  name     = "${var.project}-artifacts-${var.env != "" ? var.env : "dev"}"
  location = var.region
}


