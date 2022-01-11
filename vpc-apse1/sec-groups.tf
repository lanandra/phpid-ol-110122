# Configuration related to security groups

resource "aws_security_group" "demo_public_phpid" {
  name        = "demo-public-phpid"
  description = "Security Group for demo purposes"
  vpc_id      = aws_vpc.phpid_demo.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.default_route]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.default_route]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.default_route]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.default_route]
  }

  tags = {
    Name = "demo-public-phpid"
  }
}

resource "aws_security_group" "demo_private_phpid" {
  name        = "demo-private-phpid"
  description = "Security Group for demo purposes"
  vpc_id      = aws_vpc.phpid_demo.id

  ingress {
    description = "from public phpid_demo"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.1.0.0/20"]
  }

  ingress {
    description = "from public phpid_demo"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.1.0.0/20"]
  }

  ingress {
    description = "from public phpid_demo"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.1.0.0/20"]
  }

  ingress {
    description = "from public phpid_demo"
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["10.1.0.0/20"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.default_route]
  }

  tags = {
    Name = "demo-private-phpid"
  }
}
