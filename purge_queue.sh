#!/bin/bash

QUEUE_NAME="newqueue"
STORAGE_ACCOUNT="myuniquequeueaccount"
RESOURCE_GROUP="QueueCleanupRG"
STORAGE_ACCOUNT_KEY="cCNa9zuXR0kNMENFETHwODCtKRN5WLB1M4OiceEz+LcZ3QelGrYbBSoCINFkAQ9FeKPjwoR0GYZ7+AStBQoTSg=="
SUBSCRIPTION_ID="71f6e2ba-7b47-47e6-801f-f1ef3570"

# Login to Azure
az login

# Set subscription
az account set --subscription $SUBSCRIPTION_ID

# Purge messages from the queue


 az storage message clear --queue-name $QUEUE_NAME --account-name $STORAGE_ACCOUNT --account-key $STORAGE_ACCOUNT_KEY

    
echo "Queue $QUEUE_NAME purged successfully."

