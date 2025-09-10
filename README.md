# Terraform AWS Basic VPC

A simple, educational Terraform module that deploys a foundational VPC (Virtual Private Cloud) infrastructure on AWS. This project demonstrates core Infrastructure as Code (IaC) principles and serves as a learning resource for aspiring cloud engineers.

## 🌟 Features

- Creates a VPC with a configurable CIDR block
- Provision public and private subnets across multiple Availability Zones
- Sets up Internet Gateway for public subnet internet access
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
