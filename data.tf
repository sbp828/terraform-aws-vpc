# Retrieve the AZ where we want to create network resources
# This must be in the region selected on the AWS provider.
data "aws_availability_zones" "zones" {
  state = "available"
}

data "aws_vpc" "default" {
  default = true
}

data "aws_route_table" "default_rt" {
  vpc_id = data.aws_vpc.default.id

  filter {
    name   = "association.main"
    values = ["true"]
  }
}