variable "aws_region"       { description = "AWS region"; type = string; default = "ap-south-1" }
variable "project_name"     { description = "Project name prefix"; type = string; default = "devops-lab" }
variable "environment"      {
  description = "Environment (dev/staging/prod)"; type = string; default = "dev"
  validation { condition = contains(["dev","staging","prod"], var.environment); error_message = "Must be dev, staging, or prod." }
}
variable "instance_type"    { description = "EC2 instance type"; type = string; default = "t3.micro" }
variable "allowed_ssh_cidr" { description = "CIDR allowed to SSH (x.x.x.x/32)"; type = string }
variable "key_name"         { description = "EC2 key pair name"; type = string; default = "devops-lab" }
variable "public_key_path"  { description = "Path to local SSH public key"; type = string; default = "~/.ssh/devops-lab.pub" }
variable "alert_email"      { description = "Email for CloudWatch alarm notifications"; type = string }
