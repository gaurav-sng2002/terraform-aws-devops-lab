output "ec2_public_ip"   { description = "Public IP"; value = aws_eip.main.public_ip }
output "ec2_instance_id" { description = "Instance ID"; value = aws_instance.main.id }
output "s3_bucket_name"  { description = "S3 bucket name"; value = aws_s3_bucket.artifacts.bucket }
output "ssh_command"     { description = "SSH command"; value = "ssh -i ${var.public_key_path} ec2-user@${aws_eip.main.public_ip}" }
output "vpc_id"          { description = "VPC ID"; value = aws_vpc.main.id }
