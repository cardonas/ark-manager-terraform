resource "google_service_account" "function_account" {
  account_id   = "function-account"
  display_name = "Cloud Function Service Account"
}
