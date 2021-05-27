#Gerais
environment = "dev"
stack       = "template"
region      = "Ohio"
region-aws  = "us-east-2"
account     = "xxxxxxxxx"
initials    = "test"
project     = "template"

# S3
s3_raw_acl = "private"
s3_raw_versioning = {
  enabled = "true"
}
s3_raw_lifecycle_rule = [{
  id      = "bucket_raw"
  enabled = true
  prefix  = ""
  transition = [
    {
      days          = 60
      storage_class = "STANDARD_IA"
    },
    {
      days          = 90
      storage_class = "GLACIER"
    }
  ]
}]


#Sg
sg_name             = "sg_vpc"
sg_description      = "Security group for user-service with custom ports open within VPC"
ingress_cidr_blocks = ["10.10.0.0/16"]
ingress_rules       = ["https-443-tcp"]
ingress_with_cidr_blocks = [
  {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    description = "ssh"
    cidr_blocks = "10.10.0.0/16"
  }
]

#VPC
vpc_name_id                      = "vpc"
cidr_blocks                      = "10.0.0.0/16"
az_ids                           = ["us-east-2a", "us-east-2b", "us-east-2c", "us-east-2d", "us-east-2e", "us-aest-2f"]
private_subnets_blocks           = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
database_subnets_blocks          = ["10.0.10.0/24", "10.0.20.0/24", "10.0.30.0/24"]
public_subnets_blocks            = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
enable_nat_gateway               = true
enable_vpn_gateway               = false
create_db_subnet_group           = true
create_db_subnet_route_table     = true
create_db_internet_gateway_route = false
create_db_nat_gateway_route      = false
s3_endpoint                      = true
nat_gateway                      = true
single_nat_gw                    = true
one_nat_gw_per_az                = false
vpn_gateway                      = false
nat_ips_reuse                    = true # <= Skip creation of EIPs for the NAT Gateways
count_create_nat_ips             = 1
nat_ip_for_vpc                   = true

tags = {
  "System ID"           = "template"
  "System"              = "test"
  "Key-user"            = "test"
  "Cost Center Project" = "test"
  "Cost Center UN1"     = "test"
  "Cost Center UN2"     = "test"
  "Cost Center UN3"     = "test"
  "Parent System ID"    = "test"
  "Parent System"       = "test"
  "Environment"         = "DEV"
  "Domain"              = "test"
}
