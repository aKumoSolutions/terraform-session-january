# Input Variables

variable "instance_type" {
    type = string
    description = "This is an instance type for EC2 instances"
    default = "t3.micro"
}
variable "ami" {
    type = string
    description = "AMI for the EC2 instance"
    default = "ami-06e85d4c3149db26a"
}
variable "env" {
    type = string
    description = "Indicates the environment"
    default = "dev"
}
