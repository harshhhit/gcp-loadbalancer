module "cloudbuild" {
    source = "../modules/cloud-build"
    project = var.project
    repo_branch = var.repo_branch
    repo_name = var.repo_name
    region = var.region
    
}
