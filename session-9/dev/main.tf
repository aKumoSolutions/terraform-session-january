# Terraform Modules
# 1. Child Module = declare the resources
# 2. Root Module  = call the child module, run Terraform commands

# Local Module = module is in your filesystem
# Remote Module = SCM, HTTP URL, Terraform Cloud or Enterprise Private Registeries 

module "ec2_instance" {
    source = "../../modules/ec2" # Where the child module is
###################### Variables #########################
    env = "dev"
    ami = "ami-06e85d4c3149db26a"
    instance_type = "t2.micro"
    sg = [module.ec2_sg.id]    # Module.Module_Name.Attribute
}
module "ec2_sg" {
    source = "../../modules/sg"
    env = "dev"
}

# How to Refence to Child Module?

# You always reference to Child Module outputs