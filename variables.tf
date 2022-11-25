variable "aws_region" {
  type = string
  default = "eu-west-1"
  description = "AWS region"
}

variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
  description = "VPC CIDR range definition"
}

#variable "public_cidrs" {
#  default = {
#    eu-west-1a = "10.0.1.0/24",
#    eu-west-1b = "10.0.2.0/24",
#    eu-west-1c = "10.0.3.0/24"
#  }
#  type = map
#  description = "CIDR ranges associated to each region"
#}