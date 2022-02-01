resource "aws_vpc" "demo" {
  cidr_block = "10.1.0.0/16"
  instance_tenancy = "default"

  tags = {
      Name = "demo_vpc"
      terraformed = "true"
      created_by = "svrao"
  }
}

#vpc peering test

resource "aws_vpc" "VPCB" {
  cidr_block = "172.31.0.0/16"
  instance_tenancy = "default"

  tags = {
      Name = "demo_VPCB"
      terraformed = "true"
      created_by = "svrao"
  }
}