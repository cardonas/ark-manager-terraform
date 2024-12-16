locals {
  prevent = var.env == "ci" ? true : false
}

resource "google_storage_bucket" "artifact_bucket" {
  name     = "ark-manager-artifacts-${var.env != "" ? var.env : "dev"}"
  location = var.region

  lifecycle {
    prevent_destroy = local.prevent
  }
}


