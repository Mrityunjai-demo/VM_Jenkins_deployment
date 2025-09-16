variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
}
variable "region" {
  description = "The GCP region to deploy resources"
  type        = string
  default     = "us-central1"
}
variable "zone" {
  description = "The GCP zone to deploy resources"
  type        = string
  default     = "us-central1-a"
}

variable "application_name" {
  description = "Application name"
  type        = string
}

variable "application_env" {
  description = "Environment (dev, stage, prod)"
  type        = string
}

variable "vn_address" {
  description = "VPC CIDR block (not directly used in GCP VPC, handled in subnet)"
  type        = string
}

variable "subnet_vm_address" {
  description = "Subnet CIDR block"
  type        = string
}

variable "region" {
  description = "GCP region where subnet will be created"
  type        = string
  default     = "us-central1"
}
