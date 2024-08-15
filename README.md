1. Set Up AWS Infrastructure with Terraform:

●     Create S3 Bucket:

○     Create an S3 bucket to store Terraform state files.

![](https://github.com/Visemir/StepProject3/blob/main/jpg/s3.jpg)

●     [Define VPC and Networking:](https://github.com/Visemir/StepProject3/blob/main/terraform/main.tf)

○     Use Terraform to create a Virtual Private Cloud (VPC) with public and private subnets. 1 public (Jenkins master) and 1 private (Jenkins worker)

○     Set up Internet Gateway and NAT Gateway.

●     Launch EC2 Instances:

○     Add your ssh-key for access to EC2 in public subnet.

○     Create a security group to allow SSH and HTTP access.

○     Launch on-demand EC2 instance for Jenkins master and spot instance for Jenkins worker within the created subnets. Add your public SSH key using terraform user-data.

○     Use [variables](https://github.com/Visemir/StepProject3/blob/main/terraform/variables.tf) and output values to manage [configurations](https://github.com/Visemir/StepProject3/blob/main/ansible/inventory/hosts.cfg).

![](https://github.com/Visemir/StepProject3/blob/main/jpg/terraform01.jpg)

![](https://github.com/Visemir/StepProject3/blob/main/jpg/terraform02.jpg)

2. Set Up Jenkins master with [Ansible](https://github.com/Visemir/StepProject3/blob/main/ansible/playbook.yml):

●     Write an Ansible playbook to install Jenkins on the deployed EC2 instance.

![](https://github.com/Visemir/StepProject3/blob/main/jpg/ansible.jpg)

●     Install nginx and [configure it as a reverse proxy](https://github.com/Visemir/StepProject3/blob/main/ansible/nginx/jenkins.conf) for Jenkins web server using Ansible

3. Set Up Jenkins

●     Add a Jenkins worker to the Jenkins master.

![](https://github.com/Visemir/StepProject3/blob/main/jpg/jensworker3.jpg)

●     Deploy the same [pipeline](https://github.com/Visemir/StepProject3/blob/main/StepProject3) from Step project 2 and check if it's working as expected.

![](https://github.com/Visemir/StepProject3/blob/main/jpg/jenstep01.jpg)

![](https://github.com/Visemir/StepProject3/blob/main/jpg/jenstep02.jpg)

![](https://github.com/Visemir/StepProject3/blob/main/jpg/jenstep03.jpg)

4. Destroy all resources in the end.

Note: all deployment code (Terrafrom, Ansible, Jenkinsfile etc) should be stored in the GitHub repository.
