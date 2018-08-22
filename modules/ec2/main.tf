resource "aws_instance" "ebizon" {
        ami = "${var.ami_id}"
        instance_type = "${var.instance_type}"
        key_name = "${var.key_name}"
        subnet_id = "${var.subnet_id}"
        security_groups = "${var.security_group_id}"
        associate_public_ip_address = "true"
        tags {
         Name = "ec2-wordpress"
        }
        user_data = "${file("./wordpress.sh")}"