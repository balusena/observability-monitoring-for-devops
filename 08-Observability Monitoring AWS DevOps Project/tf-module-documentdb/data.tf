data "aws_ssm_parameter" "username" {
  name = "roboshop.${var.env}.docdb.username"
}

data "aws_ssm_parameter" "password" {
  name = "roboshop.${var.env}.docdb.password"
}