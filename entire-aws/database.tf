# create a db subnet group

data "aws_subnets" "db" {
  filter {
    name   = "tag:Name"
    values = var.db_subnet_names
  }
  depends_on = [
    aws_subnet.subnets
  ]

}

resource "aws_db_subnet_group" "entier" {
  name       = "entier"
  subnet_ids = data.aws_subnets.db.ids
  tags = {
    Name = "entier"
  }

  depends_on = [
    aws_subnet.subnets,
    data.aws_subnets.db

  ]

}