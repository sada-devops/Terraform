resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.demo.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "demo_rt"
  }
}

resource "aws_route_table" "private_rt_1a" {
  vpc_id = aws_vpc.demo.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.public_NAT.id
  }

  tags = {
    Name = "demo_private_rt_1a"
  }
}

# resource "aws_route_table" "private_rt_1b" {
#   vpc_id = aws_vpc.demo.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     nat_gateway_id = aws_nat_gateway.private_NAT_1b.id
#   }

#   tags = {
#     Name = "demo_private_rt_1b"
#   }
# }

# VPC peering test

resource "aws_route_table" "VPCB_public_rt" {
  vpc_id = aws_vpc.VPCB.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw2.id
  }

  tags = {
    Name = "VPCB_rt"
  }
}

resource "aws_route_table" "VPCB_private_rt_1a" {
  vpc_id = aws_vpc.VPCB.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.VPCB_public_NAT.id
  }

  tags = {
    Name = "VPCB_private_rt_1a"
  }
}

# resource "aws_route_table" "VPCB_private_rt_1b" {
#   vpc_id = aws_vpc.VPCB.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     nat_gateway_id = aws_nat_gateway.private_NAT_1b.id
#   }

#   tags = {
#     Name = "VPCB_private_rt_1b"
#   }
# }