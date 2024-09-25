resource "aws_docdb_subnet_group" "main" {
  name                    = "${var.component}-${var.env}"
  subnet_ids              = var.subnet_ids
  tags                    = merge({ Name = "${var.component}-${var.env}" }, var.tags)
}

resource "aws_security_group" "main" {
  name        = "${var.component}-${var.env}-sg"
  description = "${var.component}-${var.env}-sg"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = var.port
    to_port     = var.port
    protocol    = "tcp"
    cidr_blocks = var.sg_subnet_cidr
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.component}-${var.env}-sg"
  }
}

resource "aws_docdb_cluster" "main" {
  cluster_identifier      = "${var.component}-${var.env}"
  engine                  = var.engine
  engine_version          = var.engine_version
  master_username         = data.aws_ssm_parameter.username.value
  master_password         = data.aws_ssm_parameter.password.value
  skip_final_snapshot     = true
  db_subnet_group_name    = aws_docdb_subnet_group.main.name
  vpc_security_group_ids = [aws_security_group.main.id]
  kms_key_id             = var.kms_key_arn
  storage_encrypted      = true
}

resource "aws_docdb_cluster_instance" "main" {
  count              = var.db_instance_count
  identifier         = "${var.component}-${var.env}-${count.index}"
  cluster_identifier = aws_docdb_cluster.main.id
  instance_class     = var.instance_class
}
