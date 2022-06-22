# # # ##########################################################
# # # EIP

resource "aws_eip" "eip" {
  depends_on = [aws_internet_gateway.igw_env]
  vpc        = true
  tags = {
    Name = "REMF-eip-${var.environment}"
  }
}