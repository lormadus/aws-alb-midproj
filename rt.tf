  
resource "aws_route_table" "david-rt" {
  vpc_id = aws_vpc.region1-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.david-igw.id
  }

  tags = {
    Name = "dev-public"
  }
}

resource "aws_route_table_association" "david-subnet1-rt" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.david-rt.id
}

resource "aws_route_table_association" "david-subnet2-rt" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id = aws_route_table.david-rt.id
}