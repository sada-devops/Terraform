resource "aws_vpc_peering_connection" "demo" {
  vpc_id      = aws_vpc.demo.id
  peer_vpc_id = aws_vpc.VPCB.id
  auto_accept = true
}

resource "aws_vpc_peering_connection_options" "demo" {
  vpc_peering_connection_id = aws_vpc_peering_connection.demo.id

  accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_vpc_to_remote_classic_link = true
    allow_classic_link_to_remote_vpc = true
  }
}