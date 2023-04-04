resource "aws_vpc_endpoint" "lightlytics_endpoint" {
  count = var.create_pvl_endpoint == true ? 1 : 0
  vpc_id                  = local.pvl_vpc
  service_name            = var.lightlytics_endpoint_service_name
  subnet_ids              = local.pvl_subnets
  private_dns_enabled     = var.private_dns_enabled
  vpc_endpoint_type = "Interface"
  security_group_ids = local.pvl_security_groups
}

resource "aws_vpc_endpoint" "s3_endpoint" {
  count = var.create_s3_endpoint == true ? 1 : 0
  vpc_id = local.pvl_vpc
  auto_accept = true
  service_name = "com.amazonaws.${data.aws_region.current.name}.s3"
  tags = {
    Name = "s3_endpoint"
  }
}

resource "aws_vpc" "lightlytics-vpc-pvl" {
  count = var.create_pvl_vpc == true ? 1 : 0
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "lightlytics-vpc-pvl"
  }
}

resource "aws_subnet" "lightlytics-subnet-pvl1" {
  count = var.create_pvl_vpc == true ? 1 : 0
  vpc_id = aws_vpc.lightlytics-vpc-pvl[0].id
  cidr_block = "10.0.1.0/24"
  availability_zone = "${data.aws_region.current.name}a"
  map_public_ip_on_launch = false
  tags = {
    Name = "lightlytics-subnet-pvl1"
  }
}

resource "aws_subnet" "lightlytics-subnet-pvl2" {
  count = var.create_pvl_vpc == true ? 1 : 0
  vpc_id = aws_vpc.lightlytics-vpc-pvl[0].id
  cidr_block = "10.0.0.0/24"
  availability_zone = "${data.aws_region.current.name}b"
  map_public_ip_on_launch = false
  tags = {
    Name = "lightlytics-subnet-pvl2"
  }
}

resource "aws_security_group" "allow_443_outbound" {
  count = var.create_pvl_vpc == true ? 1 : 0
  name = "allow_443_outbound"
  description = "Allow 443 outbound traffic"
  vpc_id = aws_vpc.lightlytics-vpc-pvl[0].id
  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "allow_443_outbound"
  }
}
