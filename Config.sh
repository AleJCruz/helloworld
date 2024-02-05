# Part 2: Configuration Script
echo "Part 2: Configuration"
echo "-----------------------"

RESOURCE_GROUP_NAME="c"
ACR_NAME="aleexample1"
LOCATION="eastus"

# Autenticar con Azure
az login

# Crear un grupo de recursos
az group create --name $RESOURCE_GROUP_NAME --location $LOCATION

# Utilizar GitHub Secrets para la autenticación de ACR
az acr create --resource-group $RESOURCE_GROUP_NAME --name $ACR_NAME --sku Premium --admin-enabled true \
  --subscription 625c5556-e32f-42ef-b464-e763dcf68f30 \
  --query 'id' \
  --output tsv
