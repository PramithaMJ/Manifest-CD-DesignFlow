provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "my-ec2" {
  ami                    = "ami-04b70fa74e45c3917"
  instance_type          = "t2.medium"
  key_name               = "JenkinsServerPFT"
  vpc_security_group_ids = ["sg-0f9c6cfdcb6404612"]

  tags = {
    Name = "DeployServer"
  }
}

output "instance_ip" {
  value = aws_instance.my-ec2.public_ip
}
