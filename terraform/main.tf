terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}

provider "yandex" {
  token     = "AQAAAAAAWhRvAATuwYqfh6m7i07Aub7wBgP3GNY"
  cloud_id  = "b1ghpqpcdlol198mj2n0"
  folder_id = "b1gffujpu97febul0gbo"
  zone      = "ru-central1-a"
}

resource "yandex_compute_instance" "app" {
  name = "reddit-app"

  resources {
    core_fraction = 5
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      # Указать id образа созданного в предыдущем домашем задании
      image_id = "fd8pkq1j96fe8i1eb78s"
    }
  }

  network_interface {
    # Указан id подсети default-ru-central1-a
    subnet_id = "e9bkojutcebsssrgsgf6"
    nat       = true
  }

    metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/appuser.pub")}"
  }

}
