resource "aws_subnet" "oc-subnet-01" {
    vpc_id = "${aws_vpc.oc-vpc.id}"
    cidr_block = var.subnet_cidr
    map_public_ip_on_launch = "true"
    availability_zone = var.subnet_availability_zone
    tags = {
      Name = "oc-public-subnet-01"
    }
  
}