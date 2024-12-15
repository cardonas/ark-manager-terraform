output "service_account_email" {
  description = "The email for the cloud function service account"
  value       = module.service_account.email
}
