#public 1a and 1b route association

resource "aws_route_table_association" "RTA_1a" {
  subnet_id      = aws_subnet.public_1a.id
  route_table_id = aws_route_table.public_rt.id
}

# resource "aws_route_table_association" "RTA_1b" {
#   subnet_id      = aws_subnet.public_1b.id
#   route_table_id = aws_route_table.public_rt.id
# }

#private 1a and 1b route association

resource "aws_route_table_association" "private_RTA_1a" {
  subnet_id      = aws_subnet.private_1a.id
  route_table_id = aws_route_table.private_rt_1a.id
}

# resource "aws_route_table_association" "private_RTA_1b" {
#   subnet_id      = aws_subnet.private_1b.id
#   route_table_id = aws_route_table.private_rt_1b.id
# }