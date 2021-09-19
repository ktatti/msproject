resource "aws_route_table" "rt1" {
  vpc_id = aws_vpc.vpc.id
 route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }
  tags = {
    Name = "${var.candidate}-MyRoute"
  }
}
resource "aws_default_route_table" "defrt" {
  default_route_table_id = aws_vpc.vpc.main_route_table_id
	 route {
		cidr_block = "0.0.0.0/0"
		gateway_id = aws_internet_gateway.internet_gateway.id
	  }
  tags = {
    Name = "${var.candidate}-public"
  }
}