variable "name" {
  description = "The specification of module name."
  type        = string
  default     = ""
}

variable "description" {
  description = "The specification of module description."
  type        = string
  default     = "tf-vpc-ecs-eip-description"
}

variable "vpc_id" {
  description = "The specification of module vpc id."
  type        = string
  default     = ""
}

variable "vswitch_id" {
  description = "The specification of module vswitch id."
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "The specification of the instance type."
  type        = string
  default     = "ecs.n4.large"
}

variable "system_disk_category" {
  description = "The specification of the system disk category."
  type        = string
  default     = ""
}

variable "system_disk_name" {
  description = "The specification of the system disk name."
  type        = string
  default     = ""
}

variable "system_disk_description" {
  description = "The specification of the system disk description."
  type        = string
  default     = ""
}

variable "image_id" {
  description = "The specification of the image id."
  type        = string
  default     = ""
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

variable "eip_internet_charge_type" {
  description = "The specification of the eip internet charge type."
  type        = string
  default     = "PayByBandwidth"
}

variable "availability_zone" {
  description = "The available zone to launch modules."
  type        = string
  default     = ""
}

variable "cidr_block" {
  description = "The cidr block of VPC"
  type        = string
  default     = ""
}

variable "eip_isp" {
  description = "The ISP of EIP address."
  type        = string
  default     = "BGP"
}

variable "eip_payment_type" {
  description = "The payment type of EIP address."
  type        = string
  default     = "PayAsYouGo"
}

variable "primary_ip_address" {
  description = "The payment type of ip address."
  type        = string
  default     = ""
}

variable "eip_instance_type" {
  description = "The instance type of EIP."
  type        = string
  default     = "NetworkInterface"
}

variable "secondary_private_ip_address_count" {
  description = "The secondary private ip address count of EIP."
  type        = string
  default     = 1
}
