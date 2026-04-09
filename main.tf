provider "aws" {
  region = var.region
}

resource "aws_instance" "myec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.new

  user_data = file("scripts/user_data.sh")

  tags = {
    Name = "Terraform-Custom-Website"
  }
}
