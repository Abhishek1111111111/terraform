

/* /terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.20.0"
    }
  }
}/*/

/*/provider "google" {
  project = "black-resource-412612"
  region  = "us-central1"
  zone    = "us-central1-c"
}
/*/


/*/module "my_vpc" {
  source  = "terraform-google-modules/network/google//modules/vpc"
  version = "5.20.0"  # Use the desired version
  network_name = "my-vpc"
  region       = "us-central1"
}
/*/


/*/module "vpc" {
  source                                    = "terraform-google-modules/network/google//modules/vpc"
  network_name                              = var.network_name
  auto_create_subnetworks                   = var.auto_create_subnetworks
  project_id                                = var.project_id
  description                               = var.description
  mtu                                       = var.mtu
  
}
/*/

terraform {
  backend "gcs" {
    bucket  = "rushikesh1"
    prefix  = "terraform/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.77.0"  # Use the desired version
    }
  }
}

provider "google" {
    project     = "black-resource-412612"
  region      = "us-central1"
  zone        = "us-central1-c"
}


resource "google_compute_instance" "my_instance" {
  name         = "my-instance"
  machine_type = "n1-standard-1"  # Adjust as needed

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"  # Adjust the image as needed
    }
  }

  network_interface {
    network = "default"  # Adjust the network as needed
  }

  tags = ["web", "dev"]
}


