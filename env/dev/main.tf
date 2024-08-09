module "resource_group" {
  source = "../../module/resource_group"
  rg-vm = var.rg-vm

}
module "virtual_network" {
  source     = "../../module/vnet"
  vnet-vm    = var.vnet-vm
  depends_on = [module.resource_group]
}
module "subnet" {
  source     = "../../module/subnet"
  subnet-vm  = var.subnet-vm
  depends_on = [module.virtual_network]

}
module "public_ip" {
  source     = "../../module/public ip"
  public-ip  = var.public-ip
  depends_on = [module.resource_group]

}
module "network_interface" {
  source = "../../module/nic"
  nic = var.nic
  depends_on = [ module.subnet ]

}
module "virtual_machine" {
  source     = "../../module/vm"
  vm         = var.vm
  depends_on = [module.network_interface]

}