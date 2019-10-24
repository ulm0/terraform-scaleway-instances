output "instances_private_ip" { value = scaleway_instance_server.instances.*.private_ip }
output "instances_public_ip" { value = scaleway_instance_server.instances.*.public_ip }
