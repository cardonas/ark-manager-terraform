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