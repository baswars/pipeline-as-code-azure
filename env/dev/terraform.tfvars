rg-vm = {
  rg = {
    name     = "rg-dev"
    location = "South India"
  }
}
vnet-vm = {
  vnet1 = {
    name                = "vnet-dev"
    location            = "South India"
    resource_group_name = "rg-dev"
    address_space       = ["10.0.0.0/16"]
  }
}
subnet-vm = {
  subnet1 = {
    name                 = "subnet-dev"
    resource_group_name  = "rg-dev"
    virtual_network_name = "vnet-dev"
    address_prefixes     = ["10.0.1.0/24"]
  }
}
public-ip = {
  pip = {
    pip-name            = "pip-dev"
    location            = "South India"
    resource_group_name = "rg-dev"
    allocation_method   = "Static"
  }
}
nic = {
  nic1 = {
    name-nic                      = "nic-dev"
    location                      = "South India"
    resource_group_name           = "rg-dev"
    name                          = "Internal"
    private_ip_address_allocation = "Dynamic"
    subnet-name                   = "subnet-dev"
    virtual_network_name          = "vnet-dev"
    pip-name                      = "pip-dev"
  }
}
vm = {
  vm1 = {
    name                            = "vm-dev"
    location                        = "South India"
    resource_group_name             = "rg-dev"
    admin_username                  = "Sachin"
    admin_password                  = "Riya@2020"
    disable_password_authentication = "false"
    size                            = "Standard_F2"
    name-nic                        = "nic-dev"
    caching                         = "ReadWrite"
    storage_account_type            = "Standard_LRS"
    publisher                       = "Canonical"
    offer                           = "0001-com-ubuntu-server-jammy"
    sku                             = "22_04-lts"
    version                         = "latest"
  }
}