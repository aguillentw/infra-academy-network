output "hello_world" {
  value = "Hello, World!"
}

output "vpc_id" {
  description = "VPC id"
  value = aws_vpc.ag_vpc.id
}

#output "vpc_cidr" {
#  description = "VPC CIDR range"
#  value = aws_vpc.ag_vpc.cidr_block
#}

#
#output "public_subnets_cidrs" {
#  description = "Public subnets CIDR ranges"
#  value = values(aws_subnet.ag_public-subnet)[*].cidr_block
#}
#
#output "public_subnets_ids" {
#  description = "Public subnets CIDR ids"
#  value = values(aws_subnet.ag_public-subnet)[*].id
#}

