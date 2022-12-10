# Terraform-Azure-Project01

Project steps in order:
(Creating Resource Group, Virtual Machine and storage account In Azure with Terraform)
1. Creating a Resource Group
•	By using  VS Code Editor and create new folder (ctrl+O), and new file named “main.tf” 
•	From Terraform website take provider script and paste it in the “main.tf” file.
•	From the VS Code terminal,  login your Azure portal with using “az login” command.
•	After login your azure portal, provision below commands: terraform init terraform plan, terraform apply
2. Creating a Virtual Machine
•	For provisioning Virtual machine, first we should find Windows virtual machine script from terraform website:  https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_virtual_machine
•	As a second step copy all code from webpage to VS Code Editor in the “VM.tf” file. 
•	To create VM we should create RG, Virtual network, Subnet,  NIC IP,  User ID and password OS
3. Creating Storage Account:
•	From the terraform website find azurerm_storage_account  template script
https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account
•	copy and paste entire template into VS Code Editor “storageaccount.tf” file
•	We have to modify the required fields in both of VM and storage account template script. 
At last step, we deploy the all resources by using Terraform commands (Terraform plan and Terraform apply)
