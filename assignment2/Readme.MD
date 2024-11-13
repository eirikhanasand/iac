# Infrastructure as Code (IaC) for OperaTerra

## Documentation
Documentation may be found in IAC_docs.pdf, which includes screenshot of successful initialization, validation, planning, applying and destruction of resources.

## Purpose
### Network module
The purpose of the network module is to provision the Azure virtual network (VNET), manage subnets, as well as the network security groups.

### Storage account module
The purpose of the storage account module is to store the storage account types, create an Azure storage account, as well as a storage container.

## Virtual machine module
The purpose of the virtual machine module is to store the virtual machine sizes (memory, cpu, storage), as well as provising an Azure Linux VM.

## Load balancer module
The purpose of the load balancer module is to balance the load from the frontend to allow for horizontal scaling, evenly distributed load and redundancy.

## Database module
The purpose of the database module is to store end user data from the application.

## How to use
1. Run `terraform init` to initialize the project. 
2. Run `terraform validate` to validate that the repository does not contain issues.
3. Run `terraform plan -var-file="../deployments/terraform.tfvars.*"` to plan the build with the predefined variables. NB: Replace * with dev / staging / prod.
4. Run `terraform apply` to actually create the resources.
5. Run `terraform destroy` when you are done.
6. EXTRA `az ad sp create-for-rbac --name "terraform-sp" --role Contributor --scopes /subscriptions/YOUR_SUBSCRIPTION_ID` to generate the secrets. Load these into your env.
