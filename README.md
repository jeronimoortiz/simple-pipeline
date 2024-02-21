Hello everyone!

My goal for this project is to integrate some of my knowledge regarding DevOps related to IaC, CI/CD & Cloud.

The project consists of a CI/CD pipeline using Jenkins, it will run on an AWS EC2 instance (created with Terraform and provisioned with Ansible), for automated CI/CD on my portfolio
website.

For the infrastructure I decided to go for a t2.micro EC2 instance with Amazon Linux 2, these 2 items are free tier eligible so you can try to deploy this in your own account for free. There are some keys with the value "placeholder", because there are placeholders for existing cloud resources (ex, VPC ID).

For configuration management I will use Ansible, and it will locally run the playbook for configuring Jenkins.




Regarding directory structure, you will find a folder called 'Terraform' that contains the code to deploy all the infrastructure needed. Then, a folder called 'Ansible' which contains
all the roles and tasks to configure Jenkins on the EC2 instance deployed with the Terraform code. And, finally you will find the source code of my portfolio website.
