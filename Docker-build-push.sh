# Part 4: Docker Build and Push Script
echo "Part 4: Docker Build and Push"
echo "-----------------------------"

ACR_NAME="Aleexample"
IMAGE_NAME="helloworldimage"
TAG="applicationfromAle"

# Authenticate to ACR using GitHub Secret
az acr login --name $ACR_NAME --username ${{ secrets.ACR_USERNAME }} --password ${{ secrets.ACR_PASSWORD }}

# Build the Docker image
docker build -t $ACR_NAME.azurecr.io/$IMAGE_NAME:$TAG /home/business.account/project/helloworld/

# Push the image to ACR
docker push $ACR_NAME.azurecr.io/$IMAGE_NAME:$TAG
