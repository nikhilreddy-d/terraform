resource "aws_vpc" "entier_vpc" {
  cidr_block = var.vpc_network_cidr
  tags = {
    Name = local.name
  }
}