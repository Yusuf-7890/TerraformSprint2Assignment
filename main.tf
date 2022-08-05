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
#  Using the set 

resource "aws_instance" "machines" {
  for_each = toset(var.Yusufset)
  ami = "ami-05c8ca4485f8b138a"
  instance_type = "t2.micro"

  tags = {
    Name = each.key,
    }
}
