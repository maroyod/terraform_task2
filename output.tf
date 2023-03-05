output "ec2_1private" {
  value = aws_instance.web_public.private_ip
}
output "ec2_1public" {
  value = aws_instance.web_public.public_ip
}

output "ec2_2private" {
  value = aws_instance.web_private.private_ip
}
output "ec2_2public" {
  value = aws_instance.web_private.public_ip 
}

