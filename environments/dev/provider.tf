terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.1.0"
    }
  }

  backend "azurerm" {
    tenant_id            = "2e08cf7f-8ba4-4151-bed9-f1b316f95dd9"  # Can also be set via `ARM_TENANT_ID` environment variable. Azure CLI will fallback to use the connected tenant ID if not supplied.
    resource_group_name = "G18-Batch99-CommonStorageAccount"
    storage_account_name = "b18g99commonstorageacc"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "statefilemanagement"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "kanu.tfstate.19_Aug_2026"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {
  features {}
}