resource "aws_instance" "main" {
    ami = data.aws_ami.amazon_linux_2.id
    instance_type = var.instance_type
    vpc_security_group_ids = [ aws_security_group.main_sg.id ] 
    tags = {              
        Name = var.env-instance
    }
}
# dev-instance
# qa-instance
# stage-instance
# prod-instance

resource "aws_instance" "main_frontend" {
    ami = data.aws_ami.amazon_linux_2.id
    instance_type = var.instance_type
    vpc_security_group_ids = [ aws_security_group.main_sg.id ] 
    tags = {              
        Name = var.env-frontend-instance
    } 
}


# dev-frontned-instance
# qa-frontned-instance
# stage-frontned-instance
# prod-frontned-instance


# dev-instance vs # dev-frontned-instance



# References:
# 1. Resource 
# 2. Input Variable
# 3. Data source