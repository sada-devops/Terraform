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
    nat_gateway_id = aws_nat_gateway.private_NAT_1a.id
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