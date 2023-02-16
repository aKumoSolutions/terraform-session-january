resource "aws_db_instance" "main" {
  allocated_storage    = 10
  identifier           = replace(local.name, "resource", "rds")  # name for RDS instance
  db_name              = "mydb"                 # database name inside the RDS instance
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "admin" # admin user
  password             = random_password.db_password.result
  skip_final_snapshot  = var.env != "prod" ? true : false      # if env = dev, true
  final_snapshot_identifier = var.env != "prod" ?  null : "${var.env}-db-final-snapshot"  #if env = dev, null
}

# if environment is prod, set to false
# but for the other environments, set to true 

# condtion ? true_value : false_value

resource "random_password" "db_password" {
    length = 20
    special = true
    override_special = "%@"
}


# Equality Operators:
# a == a 
# > true

# a != b 
# > true

# a != a
# > false 

# Conditional Expression:

# Syntax: 
# condition ? first_value : second_value

# Example:

# car == car ? true_honda : false_toyota
# > 

# car == var ? honda : toyota
# > 

# true == false ? false : true
# > true


