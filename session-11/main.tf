resource "aws_sqs_queue" "main" {
    name = "${terraform.workspace}-sqs"
}

# terraform.workspace = workspace name

# For Each, For loop in Terraform
# Dynamic Resource Creation in Terraform
# Terraform CLI vs Cloud vs Enterprise
# Terraform validate, fmt, import, providers, refresh, state, taint, show
# Environment Variables - TF_LOG, TF_LOG_PATH, TF_INPUT, TF_VAR_name, TF_CLI_ARGS,
# Functions - slice, concat, lookup, file