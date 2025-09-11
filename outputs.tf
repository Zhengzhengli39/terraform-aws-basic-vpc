# VPC Outputs
output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "vpc_cidr_block" {
  description = "CIDR block of the VPC"
  value       = aws_vpc.main.cidr_block
}

# Internet Gateway Outputs
output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = aws_internet_gateway.main.id
}

# Subnet Outputs
output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = aws_subnet.private[*].id
}

# NAT Gateway Outputs
output "nat_gateway_id" {
  description = "ID of the NAT Gateway"
  value       = aws_nat_gateway.main.id
}

output "nat_gateway_public_ip" {
  description = "Elastic IP associated with the NAT Gateway"
  value       = aws_eip.nat.public_ip
}

# Route Table Outputs
output "public_route_table_id" {
  description = "ID of the public route table"
  value       = aws_route_table.public.id
}

output "private_route_table_id" {
  description = "ID of the private route table"
  value       = aws_route_table.private.id
}

# Comprehensive Outputs
output "availability_zones" {
  description = "List of availability zones used by all subnets"
  value       = distinct(concat(aws_subnet.public[*].availability_zone, aws_subnet.private[*].availability_zone))
}

output "vpc_arn" {
  description = "ARN of the VPC"
  value       = aws_vpc.main.arn
}

output "complete_summary" {
  description = "Complete summary of all created resources"
  value = {
    vpc_id                 = aws_vpc.main.id
    vpc_cidr               = aws_vpc.main.cidr_block
    public_subnet_count    = length(aws_subnet.public)
    private_subnet_count   = length(aws_subnet.private)
    public_subnet_ids      = aws_subnet.public[*].id
    private_subnet_ids     = aws_subnet.private[*].id
    internet_gateway_id    = aws_internet_gateway.main.id
    nat_gateway_id         = aws_nat_gateway.main.id
    public_route_table_id  = aws_route_table.public.id
    private_route_table_id = aws_route_table.private.id
  }
}