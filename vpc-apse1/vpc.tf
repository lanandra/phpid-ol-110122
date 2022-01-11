# Configuration section for vpc
resource "aws_vpc" "phpid_demo" {
  cidr_block = "10.1.0.0/16"

  tags = {
    Name = "phpid-demo"
  }
}

# Configuration section for internet gateway
resource "aws_internet_gateway" "phpid_demo" {
  vpc_id = aws_vpc.phpid_demo.id

  tags = {
    Name = "phpid-demo"
  }
}

# Configuration section for elastic ip
resource "aws_eip" "nat_phpid_demo" {
  vpc = true

  tags = {
    Name = "nat-phpid-demo"
  }
}

# Configuration section for nat gateway
resource "aws_nat_gateway" "phpid_demo_0" {
  allocation_id = aws_eip.nat_phpid_demo.id
  subnet_id     = aws_subnet.public_phpid_demo_0.id

  tags = {
    Name = "phpid-demo-0"
  }
}

# Uncomment codes below to enable NAT Gateway on other subnets
/*resource "aws_nat_gateway" "phpid_demo_1" {
  allocation_id = aws_eip.nat_phpid_demo.id
  subnet_id     = aws_subnet.public_phpid_demo_1.id

  tags = {
    Name = "phpid-demo-1"
  }
}

resource "aws_nat_gateway" "phpid_demo_2" {
  allocation_id = aws_eip.nat_phpid_demo.id
  subnet_id     = aws_subnet.public_phpid_demo_2.id

  tags = {
    Name = "phpid-demo-2"
  }
}*/
