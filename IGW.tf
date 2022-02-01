resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.demo.id

  tags = {
      Name = "demo_igw"
  }
}

#vpc peering test

resource "aws_internet_gateway" "igw2" {
  vpc_id = aws_vpc.VPCB.id

  tags = {
      Name = "demo_igw"
  }
}