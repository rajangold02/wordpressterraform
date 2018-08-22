output "ec2_id" {
  value = "${join(",", aws_instance.Ebizon.*.id)}"
}