resource "aws_instance" "my_instance" {
  ami             = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI, replace with your desired AMI
  instance_type   = "t2.micro"
  key_name        = "EC2_Access"  # Replace with your EC2 key pair name

  vpc_security_group_ids = [aws_security_group.my_security_group.id]

  subnet_id = aws_subnet.my_subnet.id

  tags = {
    Name = "EC2 IAC"
  }
}
