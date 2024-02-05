# Part 2: Configuration Script
echo "Part 2: Configuration"
echo "-----------------------"

RESOURCE_GROUP_NAME="c"
ACR_NAME="Aleexample"
LOCATION="eastus"

# Create a resource group
az group create --name $RESOURCE_GROUP_NAME --location $LOCATION

# Use GitHub Secrets for ACR authentication
az acr create --resource-group $RESOURCE_GROUP_NAME --name $ACR_NAME --sku Premium --admin-enabled true --location $LOCATION \
  --subscription 625c5556-e32f-42ef-b464-e763dcf68f30 \
  --resource-group-location eastus \
  --sku Premium \
  --admin-enabled true \
  --location $LOCATION \
  --query 'id' \
  --output tsv
