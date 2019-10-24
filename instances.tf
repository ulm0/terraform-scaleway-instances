resource "random_string" "instance_name" {
  count   = var.instances >= 0 ? 1 : 0
  length  = 16
  number  = false
  special = false
  upper   = false
}

resource "scaleway_instance_server" "instances" {
  count             = var.instances
  disable_public_ip = var.disable_public_ip
  image             = data.scaleway_image.image.id
  name              = format("%s-%s", random_string.instance_name[0].result, count.index)
  type              = var.instance_type

  root_volume {
    delete_on_termination = var.delete_on_termination
  }
}
