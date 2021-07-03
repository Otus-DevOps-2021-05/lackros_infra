resource "yandex_compute_instance" "db" {
  name = var.name_inst_db
  labels = {
    tags = "reddit-db"
  }

  resources {
    core_fraction = var.core_fr
    cores         = var.namber_of_cores
    memory        = var.memory_size
  }

  boot_disk {
    initialize_params {
      image_id = var.db_disk_image
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
