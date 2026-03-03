variable "cluster-name" {
  type        = string
  description = "EKS cluster name"
}
variable "cidr-block" {
  type        = string
  description = "CIDR block for the VPC"
}
variable "vpc-name" {
  type        = string
  description = "Name of the VPC"
}
variable "env" {
  type        = string
  description = "Environment name"
}
variable "igw-name" {
  type        = string
  description = "Name of the Internet Gateway"
}
variable "pub-subnet-count" {
  type        = number
  description = "Number of public subnets"
}
variable "pub-cidr-block" {
  type        = list(string)
  description = "CIDR blocks for public subnets"
}
variable "pub-availability-zone" {
  type        = list(string)
  description = "Availability zones for public subnets"
}
variable "pub-sub-name" {
  type        = string
  description = "Name prefix for public subnets"
}
variable "pri-subnet-count" {
  type        = number
  description = "Number of private subnets"
}
variable "pri-cidr-block" {
  type        = list(string)
  description = "CIDR blocks for private subnets"
}
variable "pri-availability-zone" {
  type        = list(string)
  description = "Availability zones for private subnets"
}
variable "pri-sub-name" {
  type        = string
  description = "Name prefix for private subnets"
}
variable "public-rt-name" {
  type        = string
  description = "Name of the public route table"
}
variable "private-rt-name" {
  type        = string
  description = "Name of the private route table"
}
variable "eip-name" {
  type        = string
  description = "Name of the Elastic IP"
}
variable "ngw-name" {
  type        = string
  description = "Name of the NAT Gateway"
}
variable "eks-sg" {
  type        = string
  description = "Name of the EKS security group"
}

# IAM
variable "is_eks_role_enabled" {
  type        = bool
  description = "Toggle to create EKS cluster IAM role"
}
variable "is_eks_nodegroup_role_enabled" {
  type        = bool
  description = "Toggle to create EKS node group IAM role"
}

# EKS
variable "is-eks-cluster-enabled" {
  type        = bool
  description = "Toggle to enable or disable EKS cluster creation"
}
variable "cluster-version" {
  type        = string
  description = "Kubernetes version for the EKS cluster"
}
variable "endpoint-private-access" {
  type        = bool
  description = "Enable private access to EKS API endpoint"
}
variable "endpoint-public-access" {
  type        = bool
  description = "Enable public access to EKS API endpoint"
}
variable "addons" {
  type = list(object({
    name    = string
    version = string
  }))
  description = "List of EKS addons with versions"
}
variable "ondemand_instance_types" {
  type        = list(string)
  description = "Instance types for on-demand node group"
}
variable "spot_instance_types" {
  type        = list(string)
  description = "Instance types for spot node group"
}
variable "desired_capacity_on_demand" {
  type        = number
  description = "Desired number of on-demand nodes"
}
variable "min_capacity_on_demand" {
  type        = number
  description = "Minimum number of on-demand nodes"
}
variable "max_capacity_on_demand" {
  type        = number
  description = "Maximum number of on-demand nodes"
}
variable "desired_capacity_spot" {
  type        = number
  description = "Desired number of spot nodes"
}
variable "min_capacity_spot" {
  type        = number
  description = "Minimum number of spot nodes"
}
variable "max_capacity_spot" {
  type        = number
  description = "Maximum number of spot nodes"
}

