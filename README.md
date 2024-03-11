# EventGridTriggerAuth - Azure Function App Authentication Enforcer

## Overview

This proof of concept (POC) project provides an Azure Function that triggers via Event Grid to enforce authentication settings on newly created Function Apps. Since Azure Policy does not currently support denying creation of Function Apps without configured authentication, this function acts as a safeguard to ensure compliance with organizational security policies. This is currently a work in progress.

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
