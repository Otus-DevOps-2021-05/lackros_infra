terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}

resource "yandex_compute_instance" "app" {
  name = var.name_inst_app
  labels = {
    tags = "reddit-app"
  }
  resources {
    core_fraction = var.core_fr
    cores         = var.namber_of_cores
    memory        = var.memory_size
  }

  boot_disk {
    initialize_params {
      image_id = var.app_disk_image
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }
}
