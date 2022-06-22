# # ##########################################################
# # NAT Gateway

resource "aws_nat_gateway" "nat_gateway_1" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.subnet_public_az1.id

  tags = {
    Name = "REMF-nat-gateway-az1-${var.environment}"
  }
}

# resource "aws_nat_gateway" "nat_gateway_2" {
#   allocation_id = aws_eip.eip.id
#   subnet_id     = aws_subnet.subnet_public_az2.id

#   tags = {
#     Name = "REMF-nat-gateway-az2-${var.environment}"
#   }
# }