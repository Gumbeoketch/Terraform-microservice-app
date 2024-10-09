module "rds" {
  source = "terraform-aws-modules/rds/aws"
  version = "5.0.2"

  identifier = "my-db-instance"
  engine = "postgres"
  engine_version = "14.3"
  instance_class = "db.t3.micro"
  allocated_storage = 20
  storage_type = "gp2"
  username = "admin"
  password = "t@k3homE"
  db_subnet_group_name = module.vpc.database_subnet_group

  vpc_security_group_ids = [module.vpc.default_security_group]
  skip_final_snapshot = true
}

output "rds_endpoint" {
  value = module.rds.this_db_instance_address
}

output "rds_password" {
  value = module.rds.this_db_instance_password
  sensitive = true
}
