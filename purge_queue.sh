#!/bin/bash

# Set Azure Service Bus namespace and queue details
NAMESPACE="queuenamespace"
QUEUE_NAME="myapp-message-queue"
RESOURCE_GROUP="QueueCleanupRG"
SUBSCRIPTION_ID="71f6e2ba-7b47-47e6-801f-f1ef3570"

# Login to Azure
az login

# Set subscription
az account set --subscription $SUBSCRIPTION_ID

# Purge messages from the queue
az servicebus queue purge --resource-group $RESOURCE_GROUP --namespace-name $NAMESPACE --queue-name $QUEUE_NAME --all-messages true

echo "Queue $QUEUE_NAME purged successfully."

