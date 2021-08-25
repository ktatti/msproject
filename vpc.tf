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
  cidr_block        = "10.100.144.0/20" # Need to be able to hold maximum 11 instances
  availability_zone = "eu-west-2a"

  tags = {
    Name = var.candidate
  }
}
