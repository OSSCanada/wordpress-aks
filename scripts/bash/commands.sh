#! /bin/bash

# Load environment variables
# source ./environment_vars

# Create Resource Group to provision resources into
az group create --location $DCLOCATION --name $RGNAME

# Deploy a cluster
az aks create --name $AKSCLUSTERNAME



