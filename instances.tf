resource "aws_instance" "web_public" {
  #this is ami for red-hat os 
  ami                    = var.redhat_os
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public.id
  key_name               = var.key_name
  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install httpd -y
              systemctl start httpd
              EOF
  vpc_security_group_ids = [aws_security_group.web.id]

}

resource "aws_instance" "web_private" {
  #this is ami for red-hat os 
  ami                    = var.redhat_os
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private.id
  key_name               = var.key_name
  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install httpd -y
              systemctl start httpd
              EOF
  vpc_security_group_ids = [aws_security_group.web.id]

}