#! /bin/bash

# Create the Azure Resource Group
az group create --location $DCLOCATION --name $RGNAME 

# Create an Azure Container Registry to save Container Images to
az acr create -g $RGNAME --name $ACRNAME

# Create AKS cluster
az aks create -g $RGNAME --name $AKSCLUSTERNAME