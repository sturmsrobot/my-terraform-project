terraform {
  backend "s3" {
    bucket = "techstarter-tf-test"
    key    = "ec2-example/vpc.tfstate"
    region = "eu-central-1"
  }
}
