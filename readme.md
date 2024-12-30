# Azure Terraform Infrastructure

This repository contains Terraform configurations for deploying basic Azure infrastructure, including:

- Resource Group
- Virtual Network
- Subnet
- Network Security Group (NSG)
- NAT Gateway
- Virtual Machine (VM)

## Directory Structure

```bash
.
├── main.tf                     # Root configuration
├── module                      # Modules for resources
│   ├── nat-gateway
│   ├── nsg
│   ├── resource_group
│   ├── subnets
│   ├── virtual_network
│   └── vm
├── outputs.tf                  # Global outputs
├── provider.tf                 # Azure provider config
├── variables.tf                # Global variables
└── readme.md                   # Project README
```

## Prerequisites

- Terraform v1.9.4+
- Azure CLI
- Azure subscription

## Usage

1. Clone the repo and navigate to the directory:

   ```bash
   git clone https://github.com/ebubevick/day-27-challenge-task.git
   cd day-27-challenge-task
   ```

2. Initialize and apply the configuration:

   ```bash
   terraform init
   terraform apply
   ```

3. To destroy the infrastructure:

   ```bash
   terraform destroy
   ```

## Outputs

The deployment will provide details like:

- Resource Group
- Virtual Network/Subnet
- NAT Gateway IP
- VM details
