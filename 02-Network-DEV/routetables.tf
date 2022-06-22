# # ##########################################################
# # Route table PUBLIC

resource "aws_route_table" "rt_public_env" {
  vpc_id = aws_vpc.vpc_env.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_env.id
  }

  tags = {
    Name = "REMF-rt-public-${var.environment}"
  }
}

# ##############################
# PUBLIC SUBNETS

resource "aws_route_table_association" "subnet-public-association-az1" {
  subnet_id      = aws_subnet.subnet_public_az1.id
  route_table_id = aws_route_table.rt_public_env.id
}

resource "aws_route_table_association" "subnet-public-association-az2" {
  subnet_id      = aws_subnet.subnet_public_az2.id
  route_table_id = aws_route_table.rt_public_env.id
}


# #########################

# #########################
# # Route table PRIVATE

resource "aws_route_table" "rt_private_env" {
  vpc_id = aws_vpc.vpc_env.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat_gateway_1.id
  }

  tags = {
    Name = "REMF-rt-private-${var.environment}"
  }
}

# # ##############################
# # PRIVATE SUBNETS

resource "aws_route_table_association" "subnet-private-association-az1" {
  subnet_id      = aws_subnet.subnet_private_az1.id
  route_table_id = aws_route_table.rt_private_env.id
}

resource "aws_route_table_association" "subnet-private-association-az2" {
  subnet_id      = aws_subnet.subnet_private_az2.id
  route_table_id = aws_route_table.rt_private_env.id
}
