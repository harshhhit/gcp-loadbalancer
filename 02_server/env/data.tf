data "terraform_remote_state" "network" {
  backend = "gcs"
  config = {
    bucket  = "staticsitejkvjycjnodejs"
    prefix  = "01_network"
  }
}
