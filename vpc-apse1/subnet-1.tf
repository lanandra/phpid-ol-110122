# Uncomment below codes to enable subnet in other availability zone
# Configuration section for public subnet
/*resource "aws_subnet" "public_phpid_demo_1" {
  cidr_block        = "10.1.4.0/22"
  vpc_id            = aws_vpc.phpid_demo.id
  availability_zone = var.availability_zone[1]

  tags = {
    Name = "public-phpid-demo-1"
  }
}

# Configuration section for private subnet
resource "aws_subnet" "private_phpid_demo_1" {
  cidr_block        = "10.1.132.0/22"
  vpc_id            = aws_vpc.phpid_demo.id
  availability_zone = var.availability_zone[1]

  tags = {
    Name = "private-phpid-demo-1"
  }
}

# Configuration section for route table public_phpid_demo_1
resource "aws_route_table" "public_phpid_demo_1" {
  vpc_id = aws_vpc.phpid_demo.id

  tags = {
    Name = "public-phpid-demo-1"
  }
}

resource "aws_route" "default_public_phpid_demo_1" {
  route_table_id         = aws_route_table.public_phpid_demo_1.id
  destination_cidr_block = var.default_route
  gateway_id             = aws_internet_gateway.phpid_demo.id
}

resource "aws_route_table_association" "public_phpid_demo_1" {
  subnet_id      = aws_subnet.public_phpid_demo_1.id
  route_table_id = aws_route_table.public_phpid_demo_1.id
}

# Configuration section for route table private_phpid_demo_1
resource "aws_route_table" "private_phpid_demo_1" {
  vpc_id = aws_vpc.phpid_demo.id

  tags = {
    Name = "private-phpid-demo-1"
  }
}

# Route to internet from private_phpid_demo_1 via nat gateway
resource "aws_route" "default_private_phpid_demo_1" {
  route_table_id         = aws_route_table.private_phpid_demo_1.id
  destination_cidr_block = var.default_route
  nat_gateway_id         = aws_nat_gateway.phpid_demo_1.id
}

resource "aws_route_table_association" "private_phpid_demo_1" {
  subnet_id      = aws_subnet.private_phpid_demo_1.id
  route_table_id = aws_route_table.private_phpid_demo_1.id
}*/
