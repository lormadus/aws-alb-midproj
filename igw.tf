resource "aws_internet_gateway" "david-igw" {
  vpc_id = aws_vpc.region1-vpc.id

  tags = {
    Name = "david-igw"
  }
}