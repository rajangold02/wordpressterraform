terraform {  
    region = "us-east-1"
    }

module "rds" {
        source = "./module/rds"
}

module "ec2" {
        source = "./module/ec2"
}
