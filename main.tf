# Use of Map and Nested Map and for_each

resource "aws_instance" "web" {
  for_each      = var.ins_type
  ami           = each.value.ami
  instance_type = each.value.instype

  tags = {
    Name  = each.value.name
    Owner = each.key
  }
}

#Use of count

resource "aws_s3_bucket" "Buckett" {
  count  = length(var.buckett)
  bucket = var.buckett[count.index]

  tags = {
    purpose = "testing"
  }

}
terraform {
  backend "s3" {
    bucket = "yusuf1bucket"
    key    = "yusufnew.tfstate"
  }
}

