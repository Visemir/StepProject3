1. Set Up AWS Infrastructure with Terraform:

●     Create S3 Bucket:

○     Create an S3 bucket to store Terraform state files.

●     Define VPC and Networking:

○     Use Terraform to create a Virtual Private Cloud (VPC) with public and private subnets. 1 public (Jenkins master) and 1 private (Jenkins worker)

○     Set up Internet Gateway and NAT Gateway.

●     Launch EC2 Instances:

○     Add your ssh-key for access to EC2 in public subnet.

○     Create a security group to allow SSH and HTTP access.

○     Launch on-demand EC2 instance for Jenkins master and spot instance for Jenkins worker within the created subnets. Add your public SSH key using terraform user-data.

○     Use variables and output values to manage configurations.

2. Set Up Jenkins master with Ansible:

●     Write an Ansible playbook to install Jenkins on the deployed EC2 instance.

●     Install nginx and configure it as a reverse proxy for Jenkins web server using Ansible

3. Set Up Jenkins

●     Add a Jenkins worker to the Jenkins master.

●     Deploy the same pipeline from Step project 2 and check if it's working as expected.

4. Destroy all resources in the end.

Note: all deployment code (Terrafrom, Ansible, Jenkinsfile etc) should be stored in the GitHub repository.
