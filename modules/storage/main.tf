resource "google_storage_bucket" "create_tfstate_bucket" {
  name          = var.state_bucket
  location      = var.region
  force_destroy = true
}

resource "google_storage_bucket" "bucket" {
  name     = var.bucket_name
  location = var.region
}
