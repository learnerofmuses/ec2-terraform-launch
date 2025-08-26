resource "aws_vpc" "TerraformVPC-TS"{
    cidr_block = "10.0.0.0/16"
    tags = {
        name = "VPC for Terraform Project 1"
    }
}

resource "aws_subnet" "my_subnet"{
    vpc_id = aws_vpc.TerraformVPC-TS.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1f"
    tags = {
        name = "My Terraform VPC subnet Project 1"
    }
}