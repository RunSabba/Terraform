output "public_ip" {
  value = aws_instance.web.public_ip
}

output "public_dns" {
  value = aws_instance.web.public_dns
}
output "ebs_type" {
  value = aws_instance.web.ebs_block_device
}