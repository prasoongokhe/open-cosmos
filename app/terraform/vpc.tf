resource "aws_vpc" "oc-vpc" {
    cidr_block = var.vpc_cidr
    tags = {
      Name = "oc-vpc"
    }
  
}