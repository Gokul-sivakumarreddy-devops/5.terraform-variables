resource "aws_security_group" "roboshop-all" {  # this is terraform name, for terraform reference only
  name        = var.sg_name                 # this is aws name
  description = var.sg_description
  #vpc_id      = aws_vpc.main.id      # If we are not giving default vpc, it will take default vpc.
ingress {
    description      = "Allow All Ports"
    from_port        = var.inbound-from-port  # zero means allowing all ports, otherwisw give specific port
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks # CIDR internet reference is 0.0.0.0/0
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]  #we are working with ipv4, so commenting ipv6
  }

egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = ["::/0"]                      #we are working with ipv4, so commenting ipv6
}
tags = {
    Name = "allow_roboshop"
  }
}