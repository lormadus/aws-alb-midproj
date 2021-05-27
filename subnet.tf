resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.region1-vpc.id
  availability_zone = "ap-northeast-2a"
  cidr_block        = "30.0.1.0/24"

  tags  = {
    Name = "subnet1"
  }
}


resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.region1-vpc.id
  availability_zone = "ap-northeast-2b"
  cidr_block        = "30.0.2.0/24"

  tags  = {
    Name = "subnet2"
  }
}