resource "aws_network_acl" "my_nacl" {
  vpc_id = aws_vpc.my_vpc.id

  ingress {
    rule_no = 100
    protocol = "6"
    action = "allow"
    cidr_block = "0.0.0.0/0"
    from_port = 22
    to_port = 22
  }

  egress {
    rule_no = 100
    protocol = "6"
    action = "allow"
    cidr_block = "0.0.0.0/0"
    from_port = 0
    to_port = 0 
  }

  tags = {
    Name = "my-nacl"
  }
} 
