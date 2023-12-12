variable "environment" {
   description = "The target environment (dev, uat, prod)"
   type        = string
}

variable "module_source_vnet" {
  default = var.environment == "dev" ? "app.terraform.io/hcta-azure-dev/vnet/azurerm" : "app.terraform.io/hcta-azure-prod/vnet/azurerm"
}

variable "module_source_blob" {
  default = var.environment == "dev" ? "app.terraform.io/hcta-azure-dev/blob/azurerm" : "app.terraform.io/hcta-azure-prod/blob/azurerm"
}