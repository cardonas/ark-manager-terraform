resource "google_cloudfunctions_function" "function" {
  name                  = var.function_name
  region                = var.region
  runtime               = "python310"
  entry_point           = "main"
  source_repository {
    url = var.source_repo
    branch = "main"
  }
  trigger_http          = true
  available_memory_mb   = 256

  service_account_email = var.service_account_email
}
