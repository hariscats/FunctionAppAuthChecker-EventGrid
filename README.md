# EventGridTriggerAuth - Azure Function App Authentication Enforcer

## Overview

For the purpose of helping anyone else, this POC project provides an Azure Function that triggers via Event Grid to enforce authentication settings on newly created Function Apps. Since Azure Policy does not currently support denying creation of Function Apps without configured authentication, this function acts as a safeguard to ensure compliance with organizational security policies.

## Prerequisites

- Azure subscription
- Permission to create Event Grid subscriptions and Azure Functions
- Azure CLI or Azure PowerShell installed
- Event Grid Trigger-based Azure Function deployed

## Event Subscription Setup

To configure an Event Grid subscription to your Azure Function:

1. Navigate to the Azure Portal.
2. Go to "Event Grid Subscriptions" and click on "Add Event Subscription".
3. Set the following:
   - **Name**: Enter a unique name for the event subscription.
   - **Topic Type**: Select "Azure Subscriptions" as the topic type.
   - **Subscription**: Select your Azure subscription.
   - **Event Types**: Choose "Resource Write Success" or other relevant event types.
   - **Endpoint Type**: Choose "Azure Function".
   - **Endpoint**: Select the deployed Azure Function for handling the events.

For automating this with CLI or PowerShell, refer to Azure's official documentation on creating Event Grid subscriptions.

Ensure your Azure Function has the Managed Identity enabled and appropriate roles assigned to interact with Event Grid and manage Function App configurations.

---

For more information, see the [Azure Event Grid documentation](https://docs.microsoft.com/en-us/azure/event-grid/).

## Functionality

- **Event Trigger**: Listens to Event Grid for Function App creation events.
- **Authentication Check**: Validates if the newly created Function App has authentication enabled.
- **Logging**: Reports the status of authentication for the Function App, assisting in compliance tracking.

## Setup

1. Clone the repository to your local machine.
2. Deploy the function to your Azure environment.
3. Configure Event Grid subscription to target the deployed function.

## Usage

The function runs automatically upon receiving a creation event from Event Grid. No manual intervention is required unless a non-compliant resource is detected.
