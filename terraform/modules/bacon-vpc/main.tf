locals {
  public_subnet_count     = length(var.public_subnets) * local.availability_zone_count
  availability_zone_count = length(var.availability_zones)
}

data "template_file" "public_network_names" {
  count    = length(var.public_subnets)
  template = var.public_subnets[count.index]["name"]
}

resource "aws_vpc" "main" {
  cidr_block           = var.cidr_block
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  enable_classiclink   = var.enable_classiclink
  instance_tenancy     = var.instance_tenancy

  tags = {
    Name        = var.name
    environment = var.environment
    managed-by  = "terraform"
    module      = "vpc"
    owner       = "BaconBill"
  }
}
