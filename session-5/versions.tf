terraform {
    required_version = "~> 1.3.0"
    required_providers {
      aws = {
        source = "hashircorp/aws"
        version = "~> 4.53.0"
      }
    }
}