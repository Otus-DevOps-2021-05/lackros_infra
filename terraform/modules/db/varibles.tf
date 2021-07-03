variable "public_key_path" {
  description = "Path to the public key used for ssh access"
}
variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}
variable "subnet_id" {
  description = "Subnets for modules"
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
