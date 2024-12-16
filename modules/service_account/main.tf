locals {
  prevent = var.env == "ci" ? true : false
}


resource "google_service_account" "function_account" {
  account_id   = "ark-manager-func-sa-${var.env != "" ? var.env : "dev"}"
  display_name = "Cloud Function Service Account - ${var.env}"

  lifecycle {
    prevent_destroy = local.prevent
  }
}
