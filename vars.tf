#Region
variable "aws_region" {
	default = "us-east-1"
}

#Instance Type
variable "instance_type" {
	default = "t2.medium"
}

#Instance AMI
variable "myimage"{
	default = "ami-035be7bafff33b6b6"
}

#Tags
locals {
  common_tags = {
	Name = "W1IDVCHFTEE002"
	Application = "CHEF"
	BillingCode = "None"
	Environment = "DV"
	Portfolio = "None"
	ResourcePOC = "teegobezi@gmail.com"
	ResourceType = "chef workstation"
	platform = "CentOS"
	}
}

#Root volume
variable "root_volume_size" {
  default = 100
}

#EBS volume
variable "data_volume_size" {
  default = 100
}
