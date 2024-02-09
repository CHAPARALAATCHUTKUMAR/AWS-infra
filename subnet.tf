resource "aws_subnet" "my_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"  # Change this to your desired availability zone

  map_public_ip_on_launch = true  # Set to true if you want instances in this subnet to receive a public IP

  tags = {
    Name = "ec2Subnet"
  }
}
