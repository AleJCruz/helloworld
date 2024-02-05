# Part 4: Docker Build and Push Script
echo "Part 4: Docker Build and Push"
echo "-----------------------------"

ACR_NAME="aleexample1"
IMAGE_NAME="helloworldimage"
TAG="applicationfromAle"

# Authenticate to ACR using GitHub Secret
az acr login --name $ACR_NAME --username aleexample1 --password w6Rq+4Ttb9q6jf3myGymnDYUE0A3kfUAAP3pD4/d8C+ACRCGJwnq

# Build the Docker image
docker build -t $ACR_NAME.azurecr.io/$IMAGE_NAME:$TAG .

# Push the image to ACR
docker push $ACR_NAME.azurecr.io/$IMAGE_NAME:$TAG
