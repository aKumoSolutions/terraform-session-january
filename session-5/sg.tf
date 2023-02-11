resource "aws_security_group" "main_sg" {   
  name        = "main"
  description = "Allow SSH inbound traffic"
}
resource "aws_security_group_rule" "ingress" {
  count = length( var.ports ) # 5
  type              = "ingress"
  to_port           = element( var.ports, count.index ) # 22, 80
  from_port         = element( var.ports, count.index ) # 22, 80
  cidr_blocks = ["0.0.0.0/0"]
  protocol          = "tcp"
  security_group_id = aws_security_group.main_sg.id
}

# count = 2
# count.index = 0, 1

# count = 5
# count.index = 0, 1, 2, 3, 4

resource "aws_security_group_rule" "egress" {
  type              = "egress"
  to_port           = 0
  protocol          = "-1"
  from_port         = 0
  security_group_id = aws_security_group.main_sg.id
  cidr_blocks = ["0.0.0.0/0"]
}

