variable "instance_type" {
    type = string
    description = "This is an instance type for EC2 instances"
    default = "t2.micro"
}
variable "env" {
    type = string
    description = "Indicates the environment"
    default = "dev"
}
variable "ports" {
    type = list(string)
    description = "List of ports"
    default = ["22", "80"]
}

# element(list, index)

# element(var.ports, 0 )
