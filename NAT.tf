resource "aws_nat_gateway" "public_NAT" {
  allocation_id = aws_eip.eip_1.id
  subnet_id     = aws_subnet.private_1a.id

  tags = {
    Name = "gw NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}

resource "aws_nat_gateway" "private_NAT_1a" {
  connectivity_type = "private"
  subnet_id = aws_subnet.private_1a.id
}

# resource "aws_nat_gateway" "private_NAT_1b" {
#   connectivity_type = "private"
#   subnet_id = aws_subnet.private_1b.id
# }