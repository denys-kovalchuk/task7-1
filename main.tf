terraform {
  backend "gcs" {
    bucket = "week7_tf"
    prefix = "terraform/state"
  }
}

module "gke_cluster" {
  source         = "github.com/denys-kovalchuk/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = var.GKE_NUM_NODES
}