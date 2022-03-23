provider "aws" {
  region = "ap-northeast-2"
  default_tags {
    tags = {
      SWQA = "DevOps"
      Name = "terraform_provisioning(core)_HI"
    }
}
