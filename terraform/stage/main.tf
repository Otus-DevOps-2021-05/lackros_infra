terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}

provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}

module "app" {
  source          = "../modules/app"
  public_key_path = var.public_key_path
  app_disk_image  = var.app_disk_image
  subnet_id       = var.subnet_id
  name_inst_app   = var.name_inst_app
  core_fr         = var.core_fr
  namber_of_cores = var.namber_of_cores
  memory_size     = var.memory_size
}

module "db" {
  source          = "../modules/db"
  public_key_path = var.public_key_path
  db_disk_image   = var.db_disk_image
  subnet_id       = var.subnet_id
  name_inst_db    = var.name_inst_db
  core_fr         = var.core_fr
  namber_of_cores = var.namber_of_cores
  memory_size     = var.memory_size
}
