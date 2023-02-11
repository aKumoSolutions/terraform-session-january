resource "aws_security_group" "main_sg" {   
  name        = "main"
  description = "Allow SSH inbound traffic"
}