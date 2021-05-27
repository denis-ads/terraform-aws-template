locals {
  vpc_name    = "${var.initials}-${var.vpc_name_id}-${var.project}-${var.environment}"
  sg_name     = "${var.initials}-${var.sg_name}-${var.project}-${var.environment}"
  environment = var.environment
  stack       = var.stack
  region      = var.region
  tags        = var.tags
}

data "aws_availability_zones" "azs" {
  state = "available"
}

data "aws_availability_zones" "available" {
  state = "available"
}





