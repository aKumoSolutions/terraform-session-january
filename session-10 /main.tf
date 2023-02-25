# Calling a child module remotely 

module "ec2" {
    source = "github.com/aKumoSolutions/terraform-session-january/main/modules/ec2"
    env = "dev"
    ami = "ami-06e85d4c3149db26a" 
    instance_type = "t2.micro"
}
github.com = Domain Name (SCM)
/aKumoSolutions = Organization
/terraform-session-january = Repository
/tree = 
/main = Branch
/modules = Subdirectory
/ec2 = Subdirectory