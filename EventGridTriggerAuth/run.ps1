param($eventGridEvent, $TriggerMetadata)

# Assuming $resourceId is the ResourceId of your Function App
$webApp = Get-AzWebApp -ResourceGroupName "eventdetectfuncv2" -Name "eventdetectfuncv2"

# Access auth settings
$authSettings = $webApp.SiteConfig.AuthSettings

# Check if authentication is enabled
if ($authSettings.Enabled -eq $true) {
    Write-Output "Authentication is enabled for the Function App: $resourceId"
} else {
    Write-Output "Authentication is NOT enabled for the Function App: $resourceId"
}
