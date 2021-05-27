#Gerais
variable "account" {
  type        = string
  description = ""
}
variable "environment" {
  type        = string
  description = ""
}

variable "project" {
  type        = string
  description = ""
}

variable "initials" {
  type        = string
  description = ""
}

variable "cidr" {
  type        = string
  description = ""
  default     = "10.0.0.0/16"
}

variable "stack" {
  type        = string
  description = ""
}
variable "region" {
  type        = string
  description = ""
}

variable "region-aws" {
  type        = string
  description = ""
}

variable "tags" {
  type        = map
  description = ""
  default     = {}
}

#vpc
variable "azs" {
  type        = list
  description = ""
  default     = ["us-east-2a"]
}

variable "private_subnets" {
  type        = list
  description = ""
  default     = ["10.0.1.0/24"]
}

variable "public_subnets" {
  type        = list
  description = ""
  default     = ["10.0.101.0/24"]
}

variable "enable_nat_gateway" {
  type        = bool
  description = ""
  default     = true
}
variable "enable_vpn_gateway" {
  type        = bool
  description = ""
  default     = false
}

#SG
variable "sg_name" {
  type        = string
  description = ""
  default     = "sg_vpc"
}

variable "sg_description" {
  type        = string
  description = ""
  default     = "Security Group"
}

variable "ingress_cidr_blocks" {
  type        = list
  description = ""
  default     = ["10.10.0.0/16"]
}

variable "ingress_rules" {
  type        = list
  description = ""
  default     = ["https-443-tcp"]
}

variable "ingress_with_cidr_blocks" {
  type        = list
  description = ""
  default     = []
}

variable "vpc_name_id" {
  type        = string
  description = ""
}
variable "cidr_blocks" {
  type        = string
  description = ""
}
variable "az_ids" {
  type        = list
  description = ""
}
variable "database_subnets_blocks" {
  type        = list
  description = ""
}
variable "create_db_subnet_group" {
  type        = bool
  description = ""
}
variable "create_db_subnet_route_table" {
  type        = bool
  description = ""
}
variable "create_db_internet_gateway_route" {
  type        = bool
  description = ""
}
variable "create_db_nat_gateway_route" {
  type        = bool
  description = ""
}
variable "private_subnets_blocks" {
  type        = list
  description = ""
}

variable "public_subnets_blocks" {
  type        = list
  description = ""
}
variable "s3_endpoint" {
  type        = bool
  description = ""
}
variable "nat_gateway" {
  type        = bool
  description = ""
}
variable "single_nat_gw" {
  type        = bool
  description = ""
}
variable "one_nat_gw_per_az" {
  type        = bool
  description = ""
}
variable "vpn_gateway" {
  type        = bool
  description = ""
}
variable "nat_ips_reuse" {
  type        = bool
  description = ""
}
variable "count_create_nat_ips" {
  type        = number
  description = ""
}
variable "nat_ip_for_vpc" {
  type        = bool
  description = ""
}
# S3
variable "s3_raw_acl" {
  type        = string
  description = ""
  default     = "private"
}

variable "s3_raw_versioning" {
  type        = map
  description = ""
  default     = {}
}

variable "s3_raw_lifecycle_rule" {
  type        = list
  description = ""
  default     = []
}
