# terraform-azure-app-service

## How to configure the project


### Create a vars file for deployment
```bash
vim deployment.tfvars
```

Now, add the next variables in this file in order to work with azure

```bash
var_azureSubscriptionId="<azure subscription id>"
var_azureClientId="<azure client id>"
var_azureClientSecret="<azure client secret>"
var_azureTenantId="<azure tenant it>"
```

### Init terraform modules
```bash
cd stages/Development
terraform init
```
### Plan the deployment
```bash
terraform plan -var-file=<path of your file> -out=development
```
### Apply the configuration and deploy the resources
```bash
terraform apply development
```

### Delete the resources
```bash
terraform plan -var-file=<path of your file> -destroy -out=development
terraform apply development
```