 provider "google" {
  project = var.project_id   
  region  = var.region       
  zone    = var.zone     
 }    

  terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.0.0"   
    }
    time = {
      source  = "hashicorp/time"
      version = "0.7.2"
    }
  }
  required_version = ">= 1.3"
 # backend "gcs" {
#    bucket  = "my-terraform-state-bucket"   
#    prefix  = "terraform/state"            
# }
  }
