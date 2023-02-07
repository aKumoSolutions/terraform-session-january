resource "aws_instance" "main" {
    ami = var.ami # string + hard coded value
    instance_type = var.instance_type
    vpc_security_group_ids = [ aws_security_group.main_sg.id ] # a list of strings # dynamic reference
    tags = {                  # a map 
        Name = var.env
    }
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

# "aws_security_group.main_sg.id" = static or hard coded value (String)
# aws_security_group.main_sg.id = reference to resource >> (string, number, boolean)

# aws_security_group = first_label
# main_sg = second_label 
# id = attribute

# Reference to input variable 
# Syntax: var.variable_name

