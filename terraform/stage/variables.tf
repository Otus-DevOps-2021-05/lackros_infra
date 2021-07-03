variable "cloud_id" {
  description = "Cloud"
}
variable "folder_id" {
  description = "Folder"
}
variable "zone" {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-b"
}
variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable "image_id" {
  description = "Disk image"
}
variable "subnet_id" {
  description = "Subnet"
}
variable "service_account_key_file" {
  description = "key .json"
}
variable "private_key_path" {
  description = "Path to the PRIVATE key used for ssh access for connetions"
}
variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}
variable "name_inst_app" {
  description = "Name of instance App"
}
variable "name_inst_db" {
  description = "Name of instance DB"
}
variable "core_fr" {
  description = "Core_fraction for instance"
}
variable "namber_of_cores" {
  description = "Namber of cores"
}
variable "memory_size" {
  description = "Memory_size"
}
