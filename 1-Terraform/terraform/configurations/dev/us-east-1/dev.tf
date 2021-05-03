ami_id = "ami-123456"
environment = "dev"
instance_type = "i3.micro"
ssh_cidr = "10.0.0.0/16"
vpc_id = "vpc-12345678"

tags = {
  ApplicationID       = "APP1234567"
  Description         = "Test Instance"
  Environment         = "DEV"
  GBL                 = "123456789"
  Owner               = "MANAGER@test.com"
  Name                = "US-EAST-DEV-US-TESTAPP"
}

# Database values
db_allocated_storage = 20
db_apply_immediately = true
db_availability_zones = ["us-east-1"]
db_engine = "mysql"
db_engine_version = "8.0.20"
db_final_snapshot_identifier = "foo"
db_instance_identifier = "dbtest"
db_instance_class = "db.t2.micro"
db_master_username = "root"
# Password to pass by Terraform Secret value OR change to EKS secret OR KMS usage
db_master_password = "changeit"
db_name = "mysqlFreeDB"
db_port = 5432
db_publicly_accessible = false
db_skip_final_snapshot = false