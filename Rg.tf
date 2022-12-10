#create a resource group
resource "azurerm_resource_group" "gokmus15" {
  name     = "gokmus15"
  location = "West Europe"
  tags = {
name = "terraform"
  }
  
}