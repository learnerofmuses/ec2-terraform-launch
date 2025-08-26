resource "aws_security_group" "TerraformSG-TS" {
  name        = "ec2-security-group"
  description = "Allows HTTP, HTTPS, and SSH traffic"
  vpc_id      = aws_vpc.TerraformVPC-TS.id

# Ingress rules - allows inbound HTTP traffic from anywhere
  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }
# Ingress rules - allows inbound HTTPS traffic from anywhere
  ingress {
    description = "Allow HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

# Ingress rules - allows inbound SSH traffic from anywhere
  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow from anywhere (consider restricting to specific IPs)
  }

  # Egress rule allows all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" 
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    name = "ec2 security group rules for Terraform Project 1"
  }
}