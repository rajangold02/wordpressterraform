variable "instance_type" {
	description = "Type of instance"
	default = "t2.micro"
}

variable "key_name" {
	description = "SSH keypair you've created"
	default = "smartcity"
}

variable "security_group_id" {
	description = "Security Group you've created"
	default = "sg-0f28b0586951e0d0e"
}

variable "subnet_id" {
  description = "The VPC subnet the instance(s) will go in"
  default = "subnet-18008455"
}

variable "ami_id" {
  description = "AMI used to spin-up this EC2 Instance"
  default = "ami-04681a1dbd79675a5"
}
variable "user_data" {
	description = "User data that need to pass to the instance(s)"
}
