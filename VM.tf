

resource "azurerm_virtual_network" "vnetproje15" {
  name                = "vnetproje15"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.gokmus15.location
  resource_group_name = azurerm_resource_group.gokmus15.name
}

resource "azurerm_subnet" "subnetproje15" {
  name                 = "subnetproje15"
  resource_group_name  = azurerm_resource_group.gokmus15.name
  virtual_network_name = azurerm_virtual_network.vnetproje15.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "proje15_nic" {
  name                = "test15-nic"
  location            = azurerm_resource_group.gokmus15.location
  resource_group_name = azurerm_resource_group.gokmus15.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnetproje15.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "vmproje15" {
  name                = "vmproje15"
  resource_group_name = azurerm_resource_group.gokmus15.name
  location            = azurerm_resource_group.gokmus15.location
  size                = "Standard_F2"
  admin_username      = "mustafag"
  admin_password      = "P@$$w0rd1234!"
  network_interface_ids = [
    azurerm_network_interface.proje15_nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}