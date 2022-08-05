terraform {
  backend "s3" {
    bucket = "yusuf1bucket"
    key    = "yusufnew.tfstate"
  }
}
