# Infrastructure as Code (IaC) for OperaTerra

## Documentation
Documentation may be found in IAC_docs.pdf, which includes screenshot of successful initialization, validation, planning, applying and destruction of resources.

## Purpose
### Key vault module
The purpose of the key vault is to store secrets, for example the key vault secret ID, as well as the SKU (Stock Keeping Unit). These are important variables that should be kept private, and are therefore stored in a seperate module.

### Network module
The purpose of the network module is to provision the Azure virtual network (VNET), manage subnets, as well as the network security groups.

### Storage account module
The purpose of the storage account module is to store the storage account types, create an Azure storage account, as well as a storage container.

## virtual machine module
The purpose of the virtual machine module is to store the virtual machine sizes (memory, cpu, storage), as well as provising an Azure Linux VM.

## How to use
1. Run `terraform init` to initialize the project. 
2. Run `terraform validate` to validate that the repository does not contain issues.
3. Run `terraform plan -var-file=".tfvars"` to plan the build with the predefined variables.
4. Run `terraform apply` to actually create the resources.
5. Run `terraform destroy` when you are done.
