resource "aws_db_instance" "default" {
  engine                     = var.db_engine
  engine_version             = var.db_engine_version
  instance_class             = var.db_instance_class
  identifier                 = var.db_instance_identifier
  name                       = var.db_name
  username                   = var.db_master_username
  password                   = var.db_master_password
  allocated_storage          = var.db_allocated_storage
  apply_immediately          = var.db_apply_immediately
  publicly_accessible        = var.db_publicly_accessible
  vpc_security_group_ids     = ["${aws_security_group.test_instance_sg.id}"]
  skip_final_snapshot        = var.db_skip_final_snapshot
  tags                       = var.tags
}

# Ref: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance