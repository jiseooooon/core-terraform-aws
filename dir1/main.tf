data "aws_caller_identity" "current" {}

data "aws_ami" "ec2_instance" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0*"]
  }

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name = "root-device-type"
    values = ["ebs"]
  }
}


resource "aws_instance" "aws-ec2" {
  ami = data.aws_ami.ec2_instance.id
  instance_type = var.instance_type
  associate_public_ip_address = var.assign_ip
  key_name = var.key_pair
  vpc_security_group_ids = var.security_groups
  subnet_id=var.subnet_id
  tags = {
    Name = var.ec2_name
    SWQA = "DevOps"
   }
}
