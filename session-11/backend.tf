terraform {
    backend "s3" {
        bucket = "terraform-session-september-backend-kris"
        region = "us-west-2"
        key = "terraform.tfstate"
        dynamodb_table = "terraform-session-sep-state-lock"
        workspace_key_prefix = "session-11"
    }
}

# Currently: default
# Backend File Path: session-11/terraform.tfstate

# Switch: dev
# Backend File Path: session-11/dev/terraform.tfstate

# When you use Terraform workspace
# It creates a terraform.tfstate in a following path

# workspace_key_prefix/workspace_name/key