resource "aws_route_table" "oc-rt" {
    vpc_id = "${aws_vpc.oc-vpc.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.oc-igw.id}"
    }
    tags = {
      Name = "oc-rt"
    }
}

// Associate subnet with routetable 

resource "aws_route_table_association" "oc-rta-subnet-1" {
    subnet_id = "${aws_subnet.oc-subnet-01.id}"
    route_table_id = "${aws_route_table.oc-rt.id}"
  
}