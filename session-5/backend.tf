terraform {
    backend "s3" {
        bucket = "terraform-session-september-backend-kris"
        region = "us-west-2"
        key    = "session-5/terraform.tfstate" #Where does terraform need to store your file. Path or Prefix 
        dynamodb_table = "terraform-session-sep-state-lock"  # Lock Table
    }
}

# 1. You cannot use any variables in key
