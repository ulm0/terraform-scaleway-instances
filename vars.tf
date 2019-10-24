variable "delete_on_termination" { default = true }
variable "disable_public_ip" { default = false }
variable "image_name" { default = "Ubuntu Bionic" }
variable "instance_arch" { default = "x86_64" }
variable "instance_type" { default = "DEV1-S" }
variable "instances" {}
variable "most_recent" { default = true }
