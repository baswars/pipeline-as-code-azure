rg-vm = {
  rg = {
    name     = "rg-test"
    location = "South India"
  }
}
vnet-vm = {
  vnet1 = {
    name                 = "vnet-test"
    location             = "South India"
    rresource_group_name = "rg-test"
    address_space        = ["10.0.0.0/16"]
  }
}

subnet-vm = {
  subnet1 = {
    name                 = "subnet-test"
    resource_group_name  = "rg-test"
    virtual_network_name = "vnet-test"
    address_prefixes     = ["10.0.1.0/24"]
  }
}
public-ip = {
  pip = {
    pip-name            = "pip-test"
    location            = "South India"
    resource_group_name = "rg-test"
    allocation_method   = "Static"
  }
}
nic = {
  nic1 = {
    name-nic                      = "nic-test"
    location                      = "South India"
    resource_group_name           = "rg-test"
    name                          = "Internal"
    private_ip_address_allocation = "Dynamic"
    subnet-name                   = "subnet-test"
    virtual_network_name          = "vnet-test"
    pip-name                      = "pip-test"
  }
}
vm = {
  vm1 = {
    name                            = "vm-test"
    location                        = "South India"
    resource_group_name             = "rg-test"
    admin_username                  = "Sachin"
    admin_password                  = "Riya@2020"
    disable_password_authentication = "false"
    size                            = "Standard_F2"
    name-nic                        = "nic-test"
    caching                         = "ReadWrite"
    storage_account_type            = "Standard_LRS"
    publisher                       = "Canonical"
    offer                           = "0001-com-ubuntu-server-jammy"
    sku                             = "22_04-lts"
    version                         = "latest"
  }
}