resource "aws_nat_gateway" "private_NAT_1a" {
  connectivity_type = "private"
  subnet_id = aws_subnet.private_1a.id
}

# resource "aws_nat_gateway" "private_NAT_1b" {
#   connectivity_type = "private"
#   subnet_id = aws_subnet.private_1b.id
# }