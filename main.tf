resource "aws_instance" "weather_node" {

  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  key_name      = var.ec2_key_name

  security_groups = [aws_security_group.ec2_sg.name]
  user_data       = <<EOF
#!/bin/bash
apt update
apt install maven git openjdk-8-jdk -y
EOF
  tags            = var.default_tags
}