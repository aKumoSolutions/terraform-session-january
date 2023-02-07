resource "aws_instance" "main" {
    ami = "ami-06e85d4c3149db26a"
    instance_type = "t2.micro"
    vpc_security_group_ids = [ "aws_security_group.main_sg.id" ] # a list of strings
}

# List?

# Fruit = [ apple, orange, banana]   # a list of fruits 
# Car   = [ Lexus, BMW, Mercedes, Honda]

# list of strings = ["ert", "zxc", "qwe"]
# list of numbers = [ 6, 8, 0 ]

# Data Type
# 1. Integer 
# 2. Float 
# 3. Number = 0, 1, 2, 3, 4, 5
# 4. String = "characters, whatever you see on your keyboard"
# 5. Boolean = true, false

# Reference to Resource

# first_label.second_label.attribute


