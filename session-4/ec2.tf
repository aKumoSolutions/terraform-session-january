resource "aws_instance" "main" {
    ami = data.aws_ami.amazon_linux_2.id
    instance_type = var.instance_type
    vpc_security_group_ids = [ aws_security_group.main_sg.id ] 
    tags = {              
        Name = var.env
    }
}


# References:
# 1. Resource 
# 2. Input Variable
# 3. Data source