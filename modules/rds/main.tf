resource "aws_db_instance" "rds" {
  allocated_storage    = "30"
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "${var.instance_class}"
  security_group_names = "${var.security_group_id}"
  name                 = "mysqldb"
  username             = "ebizon"
  password             = "Ebizon@123"
  parameter_group_name = "default.mysql5.7"
}