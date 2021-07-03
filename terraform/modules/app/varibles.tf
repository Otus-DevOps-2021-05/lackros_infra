variable "public_key_path" {
  description = "Path to the public key used for ssh access"
}
variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
variable "subnet_id" {
  description = "Subnets for modules"
}
variable "name_inst_app" {
  description = "Name of instance App"
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
