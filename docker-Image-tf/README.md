# Task

- Create an Infrastructure in AWS 
- Acceptance Criteria:     
    - Create container image which has terraform and python installed
    - Push this image to AWS ECR 


## Prerequsites: 

- Terraform server (with access to AWS Account)
    - Access should have the following permissions
        - Create/Edit ECR2
        - Instance image should be Centos or AmazonLinux
        - Instance should have Docker installed
        - AWS login should be available in order to push Docker Image

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

1. ECR
    - Image scanning is enabled

2. Docker Image
    - Terraform and Python installed   
