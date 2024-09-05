variable "yandex_cloud_token" {
  description = "Yandex Cloud OAuth Token"
  type        = string
}

variable "yandex_cloud_id" {
  description = "Yandex Cloud ID"
  type        = string
}

variable "yandex_folder_id" {
  description = "Yandex Cloud Folder ID"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the VMs"
  type        = string
}

variable "user" {
  description = "Username for Ansible and SSH connect"
  type        = string
}

variable "service_account_key_file" {
  description = "Path to the service account key file"
  type        = string
  default     = "./.authorized_key.json"
}