# Define parameters for the Event Grid trigger and metadata
param($eventGridEvent, $TriggerMetadata)

# Retrieve the Azure Web App instance by specifying the Resource Group and Name
# Replace with the actual names of your Resource Group and Web App
$webApp = Get-AzWebApp -ResourceGroupName "eventdetectfuncv2" -Name "eventdetectfuncv2"

# Retrieve the authentication settings from the Web App configuration
$authSettings = $webApp.SiteConfig.AuthSettings

# Determine if authentication is enabled by checking the 'Enabled' property
if ($authSettings.Enabled -eq $true) {
    Write-Output "Authentication is enabled for the Function App: $resourceId"
} else {
    Write-Output "Authentication is NOT enabled for the Function App: $resourceId"
}
