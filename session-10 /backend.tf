terraform {
    backend "s3" {
        bucket = "terraform-session-september-backend-kris"
        region = "us-west-2"
        key = "session-10/terraform.tfstate"
        dynamodb_table = "terraform-session-sep-state-lock"
    }
}