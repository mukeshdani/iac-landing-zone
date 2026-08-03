terraform {
  required_version = ">= 1.5.7" # Specifies minimum supported Terraform CLI version

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0" # Constrains provider selection to latest major release version 5.x
    }
  }
}

provider "azurerm" {
  features {}

  # Enables OpenID Connect (OIDC) authentication mechanism for secure, 
  # passwordless identity federation with the GitHub Actions runner.
  use_oidc = true
}
