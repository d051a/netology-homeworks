terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = "~>1.8.4"
}


provider "yandex" {
  token     = var.yandex_cloud_token  # Токен для доступа к Yandex Cloud
  cloud_id  = var.yandex_cloud_id     # Идентификатор облака
  folder_id = var.yandex_folder_id    # Идентификатор каталога
  zone      = "ru-central1-a"         # Зона размещения
}
