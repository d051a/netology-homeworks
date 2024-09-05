resource "yandex_compute_instance" "sonar" {
  name        = "sonar-01"
  platform_id = "standard-v1"
  zone        = "ru-central1-a"
  resources {
    cores  = 2
    memory = 4
  }
  boot_disk {
    initialize_params {
      image_id = "fd8j0uq7qcvtb65fbffl"
      size     = 10                      
    }
  }
  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    ssh-keys = "centos:${file("~/.ssh/id_rsa.pub")}"
  }
}

resource "yandex_compute_instance" "nexus" {
  name        = "nexus-01"
  platform_id = "standard-v1"
  zone        = "ru-central1-a"
  resources {
    cores  = 2
    memory = 4
  }
  boot_disk {
    initialize_params {
      image_id = "fd8j0uq7qcvtb65fbffl"
      size     = 10                      
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    ssh-keys = "centos:${file("~/.ssh/id_rsa.pub")}"
  }
}

resource "local_file" "ansible_hosts" {
  content  = templatefile("${path.module}/ansible_hosts.tmpl", {
    sonar_ip = yandex_compute_instance.sonar.network_interface.0.nat_ip_address
    nexus_ip = yandex_compute_instance.nexus.network_interface.0.nat_ip_address
    user = "centos"
  })
  filename = "${path.module}/../ansible/inventory/cicd/hosts.yml"
}

output "sonar_ip" {
  value = yandex_compute_instance.sonar.network_interface.0.nat_ip_address
}

output "nexus_ip" {
  value = yandex_compute_instance.nexus.network_interface.0.nat_ip_address
}
