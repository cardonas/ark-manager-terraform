module "storage" {
  source  = "./modules/storage"
  project = var.project
  region  = var.region
  env     = var.env
}

module "service_account" {
  source  = "./modules/service_account"
  project = var.project
  env     = var.env
}

module "cloud_function" {
  count                 = var.function_name != "" ? 1 : 0
  source                = "./modules/cloud_function"
  project               = var.project
  region                = var.region
  source_repo = var.source_repo
  function_name         = var.function_name
  service_account_email = module.service_account.email
}
