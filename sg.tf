module "sg_vpc" {
  source                   = "terraform-aws-modules/security-group/aws"
  name                     = local.sg_name
  description              = var.sg_description
  vpc_id                   = module.vpc.vpc_id
  ingress_cidr_blocks      = var.ingress_cidr_blocks
  ingress_rules            = var.ingress_rules
  ingress_with_cidr_blocks = var.ingress_with_cidr_blocks
}
