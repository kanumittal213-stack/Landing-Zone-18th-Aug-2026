rgs = {
  rg1 = {
    rg_name  = "corp-dev"
    location = "East Asia"
  }
  rg2 = {
    rg_name  = "corp-dev"
    location = "East Asia"
  }
}

vnets = {
  vnet1 = {
    vnet_name     = "corp-dev-vnet"
    rg_name       = "corp-dev"
    location      = "East Asia"
    address_space = ["10.75.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    subnet_name    = "frontend-subnet"
    vnet_name      = "corp-dev-vnet"
    rg_name        = "corp-dev"
    address_prefix = ["10.75.1.0/24"]
  }
  subnet2 = {
    subnet_name    = "backend-subnet"
    vnet_name      = "corp-dev-vnet"
    rg_name        = "corp-dev"
    address_prefix = ["10.75.2.0/24"]
  }
  subnet3 = {
    subnet_name    = "AzureBastionSubnet"
    vnet_name      = "corp-dev-vnet"
    rg_name        = "corp-dev"
    address_prefix = ["10.75.3.0/24"]
  }
}

pips = {
  pip1 = {
    pip_name          = "bastion-pip"
    rg_name           = "corp-dev"
    location          = "East Asia"
    allocation_method = "Static"
  }
}

nics = {
  nic1 = {
    nic_name       = "corp-dev-fe-nic"
    location       = "East Asia"
    rg_name        = "corp-dev"
    ip_config_name = "corp-dev-ip-config"
    vnet_name      = "corp-dev-vnet"
    subnet_name    = "frontend-subnet"
    vm_name        = "frontend-vm"
    rg_name        = "corp-dev"
    location       = "East Asia"
    admin_username = "adminuser"
    admin_password = "@9540174129aK"
  }

  nic2 = {
    nic_name       = "corp-dev-be-nic"
    location       = "East Asia"
    rg_name        = "corp-dev"
    ip_config_name = "corp-dev-ip-config"
    vnet_name      = "corp-dev-vnet"
    subnet_name    = "backend-subnet"
    vm_name        = "backend-vm"
    rg_name        = "corp-dev"
    location       = "East Asia"
    admin_username = "adminuser"
    admin_password = "@9540174129aK"
  }
}

bastion = {
  bastion1 = {
    bastion_name = "corp-bastion"
    location     = "East Asia"
    rg_name      = "corp-dev"
    config_name  = "bastion_config"
    subnet_name  = "AzureBastionSubnet"
    vnet_name    = "corp-dev-vnet"
    pip_name     = "bastion-pip"
  }
}