module "storage" {
  source      = "./modules/storage"
  project     = var.project
  bucket_name = var.function_bucket # where is the coming from?
}

module "service_account" {
  source   = "./modules/service_account"
  pproject = var.project
}

resource "null_resource" "create_placeholder_zip" {
  pprovisioner "local-exec" {
    command = <<EOT
    mkdir -p placeholder_code
    touch placeholder_code/main.py
    touch placeholder_code/requirements.txt
    zip -j ${var.function_name}.zip placeholder_code/*
    rm -rf placeholder_code
    EOT
  }

  triggers = {
    always_run = timestamp() # Ensures this runs at least once
  }
}

resource "google_storage_bucket_object" "placeholder_zip" {
  name   = "${var.function_name}.zip"
  bucket = module.storage.bucket_name
  source = "${path.module}/${var.function_name}.zip"

  depends_on = [null_resource.create_placeholder_zip]
}

module "cloud_function" {
  source                = "./modules/cloud_function"
  project               = var.project
  region                = var.region
  function_name         = var.function_name
  function_source       = "gs://${module.storage.bucket_name}/${var.function_name}.zip"
  service_account_email = module.service_account.email
}
