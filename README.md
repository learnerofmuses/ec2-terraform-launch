This project demonstrates how to launch an EC2 instance inside a custom VPC on AWS using Terraform. 

**Tools Used:** 

AWS EC2 - virtual server in the cloud 
Terraform - infrastructure as code tool 
AWS CLI - CLI for interacting with AWS 

**Project Structure**

├── provider.tf         # AWS provider configuration
├── main.tf             # EC2 instance resource block (TerraformInstance_TS)
├── security_group.tf   # Inbound/outbound traffic rules
└── vpc.tf              # Custom VPC configuration (TerraformVPC-TS) 
