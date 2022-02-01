resource "aws_eip" "eip_1" {
   vpc = true
}

#vpc peering test

resource "aws_eip" "eip_2" {
   vpc = true
}