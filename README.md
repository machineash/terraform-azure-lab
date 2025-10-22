# Terraform + Azure Lab

## Overview

This project is a small Terraform setup that builds a simple network environment in Microsoft Azure. 

It creates:
- one Resource Group,
- one Virtual Network, and
- one Subnet.

The goal isn't scale at this point. It's to show how IaaC works end-to-end: describe what you want, plan it, apply it, and tear it down cleanly. 

## What Happens

When you run ```terraform apply```, Terraform talks to Azure through the ```azurerm``` provider.
It sends API calls to create:

1. a resource group named tf-lab-rg,
2. a virtual network called tf-lab-vnet (10.0.0.0/16),
3. a subnet called tf-lab-subnet (10.0.1.0/24).

All of this is tracked in terraform.tfstate, so Terraform always knows what exists and what needs to change. 

## How to Run It

```bash
terraform init
terraform plan
terraform apply
terraform destroy
```

You can run everything directly from Azure Cloud Shell. It already has Terraform and the Azure CLI installed.

## Project Layout

1. main.tf - core config (resource group, network, subnet)
2. variables.tf - defines location and other inputs
3. outputs.tf - prints resource names after apply

## Outputs

After applying, Terraform shows:
```
resource_group_name = "tf-lab-rg"
vnet_name           = "tf-lab-vnet"
subnet_name         = "tf-lab-subnet"
```

## Lessons Learned
- First runs can hang while Azure registers providers. Patience is key.
- The plan/apply/destroy loop teaches how declaractive automation feels hands-on. 
- Small, working examples are great for learning and can teach faster than complex diagrams.

## Next Steps
- Add a Linux VM and network interface.
- Move Terraform state to remote Azure Storage. 
- Wrap commands in a small Go CLI helper. 

## License
MIT
