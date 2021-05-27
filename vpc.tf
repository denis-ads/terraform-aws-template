#Criacao de VPC
module "vpc" {
  #source                                 = "git::https://github.com/terraform-aws-modules/terraform-aws-vpc.git?ref=v2.24.0"  
  source                                 = "terraform-aws-modules/vpc/aws"
  version                                = "2.44.0"
  name                                   = local.vpc_name
  cidr                                   = var.cidr_blocks
  azs                                    = var.az_ids
  private_subnets                        = var.private_subnets_blocks
  database_subnets                       = var.database_subnets_blocks
  public_subnets                         = var.public_subnets_blocks
  create_database_subnet_group           = var.create_db_subnet_group
  create_database_subnet_route_table     = var.create_db_subnet_route_table
  create_database_internet_gateway_route = var.create_db_internet_gateway_route
  create_database_nat_gateway_route      = var.create_db_nat_gateway_route
  enable_s3_endpoint                     = var.s3_endpoint
  enable_nat_gateway                     = var.nat_gateway
  single_nat_gateway                     = var.single_nat_gw
  one_nat_gateway_per_az                 = var.one_nat_gw_per_az
  enable_vpn_gateway                     = var.vpn_gateway
  reuse_nat_ips                          = var.nat_ips_reuse
  external_nat_ip_ids                    = aws_eip.nat.*.id
  tags                                   = local.tags
}

#Criacao de EIP para NAT
resource "aws_eip" "nat" {
  count = var.count_create_nat_ips
  vpc   = var.nat_ip_for_vpc
}
