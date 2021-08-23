 variable "ec2_name" {
   description = "ec2 instance tag Name"
   default = "DevOS_terraform_by hyein (External)"
 }

 variable "subnet_id" {
   description = "subnet identity"
   default = "subnet-1af11756"
 }

 variable "security_groups" {
   description = "security group ids"
   type = list(string)
   default = ["sg-01f61050e58083d6e"]
 }

 variable "key_pair" {
   description = "pem key pair name"
   default = "hyein"
 }

 variable "instance_type" {
   description = "ec2 instance type"
   default = "t2.micro"
 }

 variable "assign_ip" {
   description = "use assign ip"
   type = bool
   default = true
 }
