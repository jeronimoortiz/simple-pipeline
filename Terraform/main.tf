terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "value"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}