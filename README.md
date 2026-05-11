# Terraform AWS Lab

![Build Status](https://img.shields.io/badge/build-passing-brightgreen)
![Terraform](https://img.shields.io/badge/terraform->=1.0-blue)
![AWS](https://img.shields.io/badge/aws-provider-orange)

## 🌟 The Problem

ClickOps in the AWS console leads to snowflake servers, untrackable changes, and impossible disaster recovery.

## 💡 The Solution

Infrastructure as Code (IaC) using Terraform. This repository provisions a highly available, secure AWS environment including a VPC, public/private subnets, an EKS cluster for the applications, and an RDS instance for persistent storage.

*(Insert architecture diagram image here)*

## 🚀 Quick Start

Deploy the infrastructure in 3 commands:

```bash
cp terraform.tfvars.example terraform.tfvars
terraform init
terraform apply -auto-approve
```

## ✨ Features

- **High Availability**: Multi-AZ VPC deployment.
- **Secure by Default**: Private subnets for databases and compute nodes.
- **EKS Ready**: Managed Kubernetes cluster ready to host our AI applications.
- **State Management**: Configured for S3 backend with DynamoDB locking.

## 🏗️ Architecture

```ascii
+-------------------------------------------------------------+
|  AWS VPC (10.0.0.0/16)                                      |
|                                                             |
|  +--------------------+      +---------------------------+  |
|  | Public Subnet      |      | Private Subnet            |  |
|  | (NAT, ALB)         | ---> | (EKS Nodes, RDS)          |  |
|  +--------------------+      +---------------------------+  |
+-------------------------------------------------------------+
```

## ⚙️ Configuration

Set these in `terraform.tfvars`:

| Variable | Default | Description |
|----------|---------|-------------|
| `aws_region` | `us-east-1` | AWS Region |
| `cluster_name` | `ai-platform-eks` | Name of the EKS cluster |

## 🛠️ Troubleshooting

See [docs/troubleshooting.md](docs/troubleshooting.md).

## 🤝 Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

## 🌍 Ecosystem Integration
This is Repo 5 of 6 in our [DevOps & MLOps Ecosystem](../README.md). It provisions the raw AWS infrastructure that the CI/CD pipeline deploys our RAG and MLOps Docker images onto.
