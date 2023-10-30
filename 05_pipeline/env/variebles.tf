variable "repo_branch" {
    description = " name of the branch"
    default = "master"
}

variable "repo_name" {
    description = " name of the repoand link"
    default = "https://github.com/harshhhit/cloud-run-django.git"
}


variable "project" {
  description = "The ID of the project where the VPC will be created"
default       = "clean-mountain-395906"
}
variable "region" {
 default = "us-central1"
 }

 