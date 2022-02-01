#public 1a,1b subnets in 1a and 1b availablity zones

resource "aws_subnet" "public_1a" {
  vpc_id = aws_vpc.demo.id
  cidr_block = "10.1.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone = "ap-south-1a"
  tags = {
      Name = "demo_public_subnet_1a"
  }
}

# resource "aws_subnet" "public_1b" {
#   vpc_id = aws_vpc.demo.id
#   cidr_block = "10.1.2.0/24"
#   map_public_ip_on_launch = "true"
#   availability_zone = "ap-south-1b"
#   tags = {
#       Name = "demo_public_subnet_1b"
#   }
# }

#private 1a,1b subnets in 1a and 1b availablity zones

resource "aws_subnet" "private_1a" {
  vpc_id = aws_vpc.demo.id
  cidr_block = "10.1.3.0/24"
 availability_zone = "ap-south-1a"
  tags = {
      Name = "demo_private_subnet_1a"
  }
}

# resource "aws_subnet" "private_1b" {
#   vpc_id = aws_vpc.demo.id
#   cidr_block = "10.1.4.0/24"
#   availability_zone = "ap-south-1b"
#   tags = {
#       Name = "demo_private_subnet_1b"
#   }
# }

# VPCB subnets

resource "aws_subnet" "VPCB_subnet_public_1a" {
  vpc_id = aws_vpc.VPCB.id
  cidr_block = "172.31.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone = "ap-south-1a"
  tags = {
      Name = "VPCB_public_subnet_1a"
  }
}

# resource "aws_subnet" "VPCB_subnet_public_1b" {
#   vpc_id = aws_vpc.VPCB.id
#   cidr_block = "172.31.2.0/24"
#   map_public_ip_on_launch = "true"
#   availability_zone = "ap-south-1b"
#   tags = {
#       Name = "VPCB_public_subnet_1b"
#   }
# }

#private 1a,1b subnets in 1a and 1b availablity zones

resource "aws_subnet" "VPCB_subnet_private_1a" {
  vpc_id = aws_vpc.VPCB.id
  cidr_block = "172.31.3.0/24"
 availability_zone = "ap-south-1a"
  tags = {
      Name = "VPCB_private_subnet_1a"
  }
}

# resource "aws_subnet" "VPCB_subnet_private_1b" {
#   vpc_id = aws_vpc.VPCB.id
#   cidr_block = "172.31.4.0/24"
#   availability_zone = "ap-south-1b"
#   tags = {
#       Name = "VPCB_private_subnet_1b"
#   }
# }