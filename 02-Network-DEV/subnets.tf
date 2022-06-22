# # ##############################
# # SUBNET PRIVATE

# # Subnet 1 = AZ A
resource "aws_subnet" "subnet_private_az1" {
  vpc_id                  = aws_vpc.vpc_env.id
  cidr_block              = var.subnet_private_az1
  map_public_ip_on_launch = false
  availability_zone       = "${var.region}a"
  # ipv6_cidr_block = cidrsubnet(aws_vpc.vpc_env.ipv6_cidr_block, 8, 0)
  # assign_ipv6_address_on_creation = true
  tags = {
    Name = "REMF-${var.environment}-subnet-pivate-az1"
  }
}

# # Subnet 2 = AZ B
resource "aws_subnet" "subnet_private_az2" {
  vpc_id                  = aws_vpc.vpc_env.id
  cidr_block              = var.subnet_private_az2
  map_public_ip_on_launch = false
  availability_zone       = "${var.region}b"
  # ipv6_cidr_block = cidrsubnet(aws_vpc.vpc_env.ipv6_cidr_block, 8, 1)
  # assign_ipv6_address_on_creation = true
  tags = {
    Name = "REMF-${var.environment}-subnet-pivate-az2"
  }
}

# # ##############################

# # ##############################
# # SUBNET PUBLIC

# # Subnet 1 = AZ A
resource "aws_subnet" "subnet_public_az1" {
  vpc_id                  = aws_vpc.vpc_env.id
  cidr_block              = var.subnet_public_az1
  map_public_ip_on_launch = true
  availability_zone       = "${var.region}a"
  # ipv6_cidr_block = cidrsubnet(aws_vpc.vpc_env.ipv6_cidr_block, 8, 1)
  # assign_ipv6_address_on_creation = true
  tags = {
    Name = "REMF-${var.environment}-subnet-public-az1"
  }
}

# # Subnet 2 = AZ B
resource "aws_subnet" "subnet_public_az2" {
  vpc_id                  = aws_vpc.vpc_env.id
  cidr_block              = var.subnet_public_az2
  map_public_ip_on_launch = true
  availability_zone       = "${var.region}b"
  # ipv6_cidr_block = cidrsubnet(aws_vpc.vpc_env.ipv6_cidr_block, 8, 1)
  # assign_ipv6_address_on_creation = true
  tags = {
    Name = "REMF-${var.environment}-subnet-public-az2"
  }
}