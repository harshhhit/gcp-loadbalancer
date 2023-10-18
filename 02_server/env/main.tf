module "vm-instance" {
    source = "../modules/vminstance"
    #data-block [how to use the data that we have called ]
     vpc_network = data.terraform_remote_state.network.outputs.network_name
     subnet_network =data.terraform_remote_state.network.outputs.subnet_us_central1
    # name(any)    =  calldata(data.)from whrere(name of the data in data  file)and what you want to call (subnet name given )
    project = var.project
}


module "storagebucket" {
    source = "../modules/staticstorage"
    project = var.project
    region = var.region
    
}

module "vmgroup" {
    source = "../modules/vmgroup/"
    instance1 = module.vm-instance.instance1
    instance4 = module.vm-instance.instance4
    project = var.project
}

module "loadbalancer" {
    source = "../modules/loadbalancer"
    vmgroup = module.vmgroup.vmgroup
    storagebucket = module.storagebucket.storagebucket
    project = var.project
    
}