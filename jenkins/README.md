# Task

- Setting up a Jenkins CI/CD pipeline with Terraform
- Acceptance Criteria:     
    - Create Jenkins serve rand be able to login 
    - Create instance profile to run terraform jobs
    - Create SSH key to access repo from bitbucket



## Prerequsites: 

- Terraform server (with access to AWS Account)
    - Access should have the following permissions
        - Create/Edit EC2
        - Create/Edit Instance Profile
        - Instance image should be Centos or AmazonLinux
        - Should have existing key-pair, role, VPC and subnet.

## Solution 

- Step 1: Configuring Terraform Server 

    - Install/Configure Terraform (version 12.~) 
    - Make sure Terraform can access AWS Account and has the ability to create above mentioned resources


- Step 2: Write Terraform code 

- Step 3: Run Terrform code 

    - Terraform init
    - Terraform validate
    - Terraform plan
    - Terraform apply

## Resources created with the code

1. Instance Profile
    - Created on top of existing role

2. EC2
    - Security group (all the necessary ports are open)
    - Jenkins is installed (ready to serve Jenkins and ssh-key is generated)
    

