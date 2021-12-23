output "this_ecs_id" {
  value = alicloud_instance.default.id
}

output "this_eip_id" {
  value = alicloud_eip_address.default.id
}

output "this_ecs_name" {
  value = alicloud_instance.default.instance_name
}
