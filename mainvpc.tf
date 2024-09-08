#Create VPC in us-east-1
resource "aws_vpc" "vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "terraform-vpc"    
  }

}

resource "aws_default_subnet" "subnet_test"{
  availability_zone = "us-east-1"

  tags = {
    Name = "Testing_terra_subnet"
  }
}