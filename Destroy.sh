# Part 5: Destroy Script
echo "Part 5: Destroy Resources"
echo "-------------------------"
RESOURCE_GROUP_NAME="c"

# List resources before deletion
echo "Resources before deletion:"
az resource list --resource-group $RESOURCE_GROUP_NAME --output table

# Solicitar confirmación
read -p "Do you want to proceed with the deletion? (y/n): " confirm
if [ "$confirm" != "y" ]; then
    echo "Aborted. No resources were deleted."
    exit 0
fi

# Use GitHub Secrets for ACR authentication
az login --service-principal -u ${{ secrets.AZURE_CLIENT_ID }} -p ${{ secrets.AZURE_CLIENT_SECRET }} --tenant ${{ secrets.AZURE_TENANT_ID }}

# Delete the resource group
az group delete --name $RESOURCE_GROUP_NAME --yes --no-wait

# List resources after deletion
echo "Resources after deletion:"
az resource list --resource-group $RESOURCE_GROUP_NAME --output table

echo "Resources destroyed successfully."

echo "Live Execution completed."
