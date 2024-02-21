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

/*
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
  provisioner "remote-exec" {
    inline = [ "echo 'Wait until SSH is ready'"]

    connection {
      type = "ssh"
      user = local.ssh_user
      private_key = file(local.private_key_path)
      host = aws_instance.jenkins.public_ip
    }
  }
  provisioner "local-exec" {
    command = "ansible-playbook -i ${aws_insatnce.jenkins.public.ip}, --private-key ${local.private_key_path} playbook.yml"
    
  }
}
*/