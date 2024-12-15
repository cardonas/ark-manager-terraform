resource "google_cloudfunctions_function" "function" {
  name                  = var.function_name
  runtime               = "python310"
  entry_point           = "main"
  source_archive_bucket = var.artifact_bucket
  source_archive_object = var.function_source
  trigger_http          = true
  available_memory_mb   = 256

  service_account_email = var.service_account_email
}
