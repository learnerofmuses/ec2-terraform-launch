resource "aws_instance" "TerraformInstance_TS"{
    ami = "ami-00ca32bbc84273381"
    instance_type = "t2.micro"
    tags = {
        name = "Terraform launched EC2 intance for Project 1"
    }
}