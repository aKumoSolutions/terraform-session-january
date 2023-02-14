terraform {
    backend "s3" {
        bucket = "terraform-session-september-backend-kris"
        region = "us-west-2"
        key = "session-6/filestructure/qa/terraform.tfstate"
        dynamodb_table = "terraform-session-sep-state-lock"
    }
}

# If you want to isolate infrastructure and resuse your configuration files, you must isolate the backend

# Isolating backend (terraform.tfstate) = Isolating environment