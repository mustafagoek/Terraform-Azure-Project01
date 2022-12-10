resource "azurerm_storage_account" "storage_account_proje15" {
  name                     = "mustafa15"
  resource_group_name      = azurerm_resource_group.gokmus15.name
  location                 = azurerm_resource_group.gokmus15.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  }