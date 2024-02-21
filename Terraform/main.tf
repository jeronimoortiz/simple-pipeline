terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.37.0"
    }
  }
  backend "s3" {
    bucket = "simple-pipeline-backend"
    key = "value"
    region = "us-east-1"
    
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "jenkins-instance" {
  ami = "ami-0fe630eb857a6ec83"
  instance_type = "t2.micro"
  key_name = "ssh"
  tags = {
      Project = simple-pipeline
      Origin = terraform
  }
}