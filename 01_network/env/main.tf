
module "vpc001" {
  source = "../modules/vpc"
  project = var.project 
  
}

module "subnet001" {
  source     = "../modules/subnet"
  vpc_network = module.vpc001.network_name #the module is called from above output file
  project = var.project
# how to call a veriable of vpc in subnet  in line 3 of subnet [ name(any or used in subnet) = module(what you wnat to call)+name of module ( eg we have given 001 
# in above line + then what we want to call from that vaeriables like network_name(defined in the output of it ))]
  
# how to use that now above create  :- create the veriables in the subnet that we van use 


}
module "securitygrp" {
  source = "../modules/securitygrp"
  vpc_network = module.vpc001.network_name
  project = var.project
}




