terraform {
  backend "s3" {
    bucket = "wordpressterraform"
    key    = "terraform/us-east-1/terraform.tfstate"
    region = "us-east-1"
  }
}
module "rds" {
        source = "./module/rds"
}

module "ec2" {
        source = "./module/ec2"
}
