variable "name" {
  description = "The specification of module name."
  type        = string
  default     = "tf-vpc-ecs-eip-test"
}

variable "instance_type" {
  description = "The specification of the instance type."
  type        = string
  default     = "ecs.n4.large"
}

variable "system_disk_category" {
  description = "The specification of the system disk category."
  type        = string
  default     = "cloud_efficiency"
}

variable "system_disk_name" {
  description = "The specification of the system disk name."
  type        = string
  default     = "system_disk"
}

variable "system_disk_description" {
  description = "The specification of the system disk description."
  type        = string
  default     = "system_disk_description"
}

variable "image_id" {
  description = "The specification of the image id."
  type        = string
  default     = "ubuntu_18_04_64_20G_alibase_20190624.vhd"
}

variable "internet_max_bandwidth_out" {
  description = "The specification of the internet max bandwidth out."
  type        = number
  default     = 10
}

variable "ecs_size" {
  description = "The specification of the ecs size."
  type        = number
  default     = 1200
}

variable "category" {
  description = "The specification of the category."
  type        = string
  default     = "cloud_efficiency"
}

variable "description" {
  description = "The specification of module description."
  type        = string
  default     = "tf-vpc-ecs-eip-description"
}

variable "primary_ip_address" {
  description = "The payment type of ip address."
  type        = string
  default     = "172.16.0.1"
}

variable "secondary_private_ip_address_count" {
  description = "The secondary private ip address count of EIP."
  default     = 1
}

variable "eip_isp" {
  description = "The ISP of EIP address."
  default     = "BGP"
}

variable "eip_internet_charge_type" {
  description = "The specification of the eip internet charge type."
  type        = string
  default     = "PayByBandwidth"
}

variable "eip_payment_type" {
  description = "The payment type of EIP address."
  default     = "PayAsYouGo"
}