resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.candidate
	}
}

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = var.candidate
  }
}

resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.vpc.id
  #cidr_block        = "10.100.144.240/28" # Need to be able to hold maximum 11 instances
  cidr_block        = "10.100.100.0/24" # Need to be able to hold maximum 11 instances
  availability_zone = "eu-west-2a"
  tags = {
   Name = var.candidate
  }
}
resource "aws_subnet" "public1" {
  vpc_id            = aws_vpc.vpc.id
    cidr_block        = "10.100.200.0/24" # Need to be able to hold maximum 11 instances
  availability_zone = "eu-west-2b"
  tags = {
   Name = var.candidate
  }
}

#data "aws_availability_zones" "available" {}

#resource "aws_subnet" "public" {
#  count = 2
#  vpc_id = "${aws_vpc.vpc.id}"
#  cidr_block = "10.100.${10+count.index}.0/24"
#  availability_zone = "${data.aws_availability_zones.available.names[count.index]}"
  #map_public_ip_on_launch = true
#  tags = {
#    Name = "PublicSubnet"
#  }
#}


