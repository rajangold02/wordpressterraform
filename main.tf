terraform {
  backend "s3" {
    bucket = "wordpressterraform"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}
module "rds" {
	source = "./modules/rds"
}

module "ec2" {
	source = "./modules/ec2-wordpress-apache"
}

module "elb" {
	source = "./modules/elb"
	instance-id = "${module.ec2.instance-id}"
}
