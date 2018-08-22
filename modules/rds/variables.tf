variable "instance_class" {
	description = "Type of instance"
	default = "db.t2.micro"
}
variable "security_group_id" {
	description = "Security Group you've created"
	default = "sg-0350f96ea3a05c992"
}