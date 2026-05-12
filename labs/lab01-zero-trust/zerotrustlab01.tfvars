resource_groups = {
  "zt-lab1-rg-lab" = {
    location = "eastus"
  }
}

#Network configuration
vnet_name           = "zt-lab1-vnet-lab"
vnet_address_space  = ["10.0.0.0/16"]

subnets = [
  {
    name           = "zt-lab1-mgmt-subnet-lab"
    address_prefix = "10.0.1.0/24"
  },
  {
    name           = "zt-lab1-web-subnet-lab"
    address_prefix = "10.0.2.0/24"
  },
  {
    name           = "zt-lab1-app-subnet-lab"
    address_prefix = "10.0.3.0/24"
  },
  {
    name           = "zt-lab1-db-subnet-lab"
    address_prefix = "10.0.4.0/24"
  }
]

#Security configuration
nsgs = [
  {
    name = "zt-lab1-nsg-lab"  
  },
  {
    name = "zt-lab1-web-nsg-lab" 
  },
  {
    name = "zt-lab1-app-nsg-lab" 
  },
  {
    name = "zt-lab1-db-nsg-lab"
  }
]
