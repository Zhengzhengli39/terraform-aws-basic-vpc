# Terraform AWS Basic VPC

An educational Terraform project that provisions a basic yet flexible Virtual Private Cloud (VPC) environment on AWS.
It is designed as a hands-on learning resource for Infrastructure as Code (IaC) practices, providing a starting point for more advanced networking deployments.

## 🌟 Features

- Deploys a customizable VPC with user-defined CIDR ranges
- Creates both public and private subnets distributed across multiple Availability Zones for high availability
- Attaches an Internet Gateway to support internet-facing resources
- Configures route tables for proper traffic routing
- Implements basic network security with NACLs and Security Groups

## 🏗️ Architecture

This module creates the following AWS resources:
- **VPC** - Virtual Private Cloud network
- **Public Subnets** - For resources requiring direct internet access
- **Private Subnets** - For internal resources without direct internet access
- **Internet Gateway** - Allows communication between VPC and the internet
- **Route Tables** - Defines traffic routing rules
- **NAT Gateway** (Optional) - Allows private subnets to access the internet

## 🚀 Usage

### Prerequisites
- AWS account with appropriate permissions
- Terraform installed locally
- AWS CLI configured with credentials

### Deployment
1. Clone this repository
2. Review and modify variables in `terraform.tfvars` (create if it doesn't exist)
3. Initialize Terraform:
   ```bash
   terraform init
4. Review execution plan:
   ```bash
   terraform plan
5. Apply configuration:
   ```bash
   terraform apply
