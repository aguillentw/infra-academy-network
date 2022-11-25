resource "aws_vpc" "ag_vpc" {

  cidr_block = var.vpc_cidr
#  # ipv4_ipam_pool_id   = var.ipv4_ipam_pool_id
#  # ipv4_netmask_length = var.ipv4_netmask_length
#
#  assign_generated_ipv6_cidr_block = true
#
#  instance_tenancy               = "default"
#  enable_dns_hostnames           = true
#  enable_dns_support             = true
#  enable_classiclink             = null # https://github.com/hashicorp/terraform/issues/31730
#  enable_classiclink_dns_support = null # https://github.com/hashicorp/terraform/issues/31730
#
  tags = {
    Name = "ag_vpc"
  }
}

#resource "aws_vpc" "ag_vpc" {
#
#  cidr_block = var.vpc_cidr
#  # ipv4_ipam_pool_id   = var.ipv4_ipam_pool_id
#  # ipv4_netmask_length = var.ipv4_netmask_length
#
#  assign_generated_ipv6_cidr_block = true
#
#  instance_tenancy               = "default"
#  enable_dns_hostnames           = true
#  enable_dns_support             = true
#  enable_classiclink             = null # https://github.com/hashicorp/terraform/issues/31730
#  enable_classiclink_dns_support = null # https://github.com/hashicorp/terraform/issues/31730
#
#  tags = {
#    name = "ag_vpc"
#  }
#}

#resource "aws_internet_gateway" "ag_igw" {
#  vpc_id = aws_vpc.ag_vpc.id
#
#  tags = {
#    Name = "ag_vpc-igw"
#  }
#}
#
#resource "aws_route" "ag_route" {
#  route_table_id         = aws_vpc.ag_vpc.main_route_table_id
#  destination_cidr_block = "0.0.0.0/0"
#  gateway_id             = aws_internet_gateway.ag_igw.id
#}
#
### Public subnets
#resource "aws_subnet" "ag_public-subnet" {
#  for_each = var.public_cidrs
#
#  vpc_id            = aws_vpc.ag_vpc.id
#  cidr_block        = each.value
#  availability_zone = each.key
#
#  tags = {
#    Name = "ag_vpc-subnet"
#  }
#}
#
#list1 = [a,d,b,c]
#list2 = [1,2,3]
#
#map a:1, b:2, c:3
#
#for i in range (0..2):
#  element1 = list1[i]
#  element2 = list2[i]
#
