# Set outputs
output "public_phpid_demo_0" {
  value = aws_subnet.public_phpid_demo_0.id
}

output "private_phpid_demo_0" {
  value = aws_subnet.private_phpid_demo_0.id
}

output "sec_group_demo_public_phpid" {
  value = aws_security_group.demo_public_phpid.id
}

output "sec_group_demo_private_phpid" {
  value = aws_security_group.demo_private_phpid.id
}
