resource "aws_internet_gateway" "oc-igw" {
    vpc_id = "${aws_vpc.oc-vpc.id}"
    tags = {
      Name = "oc-igw"
    }
}