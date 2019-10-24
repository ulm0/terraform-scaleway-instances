data "scaleway_image" "image" {
  architecture = var.instance_arch
  most_recent  = var.most_recent
  name         = var.image_name
}