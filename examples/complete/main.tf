data "alicloud_zones" "default" {
  available_resource_creation = "Instance"
  available_instance_type     = var.instance_type
  available_disk_category     = var.system_disk_category
  enable_details              = true
}

module "vpc" {
  source             = "alibaba/vpc/alicloud"
  create             = true
  vpc_name           = "my_module_vpc"
  vpc_cidr           = "172.16.0.0/16"
  vswitch_name       = "my_module_vswitch"
  vswitch_cidrs      = ["172.16.1.0/24"]
  availability_zones = [data.alicloud_zones.default.ids.0]
}

module "example" {
  source                     = "../.."
  name                       = var.name
  availability_zone          = data.alicloud_zones.default.zones.0.id
  vpc_id                     = module.vpc.vpc_id
  vswitch_id                 = module.vpc.vswitch_ids[0]
  eip_isp                    = var.eip_isp
  eip_internet_charge_type   = var.eip_internet_charge_type
  eip_payment_type           = var.eip_payment_type
  primary_ip_address         = var.primary_ip_address
  instance_type              = var.instance_type
  system_disk_category       = var.system_disk_category
  system_disk_name           = var.system_disk_name
  system_disk_description    = var.system_disk_description
  image_id                   = var.image_id
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  ecs_size                   = var.ecs_size
  category                   = var.category
  description                = var.description
}
