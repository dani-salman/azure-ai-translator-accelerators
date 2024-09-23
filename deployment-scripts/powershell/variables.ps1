# Variables

# Function to generate a random 5-character string
function Get-RandomString {
    -join ((97..122) | Get-Random -Count 5 | ForEach-Object { [char]$_ })
}

$randomString = Get-RandomString

$subscriptionId = "94e31be9-876f-4122-b44f-f32b3a8198fd"
$resourceGroupName = "ai-translator-accelerator-rg-$randomString"
$location = "uksouth"
$storageAccountName = "azaitranslator$randomString" # Must be between 3 and 24 characters, only lower-case letters and numbers
$appServicePlanName = "azure-ai-translator-plan-$randomString"
$functionAppNameUpload = "ai-translator-upload-func-$randomString"
$functionAppNameTranslate = "ai-translator-translate-func-$randomString"
$functionAppNameWatermark = "ai-translator-watermark-func-$randomString"
$storageContainerName = "documents"
$translationSku = "S1"
$CosmosDBName = "translateservice$uniqueString"
# Translation Service variables
$translationServiceName = "ai-trans-service-$randomString"
$customDomain = "ai-translator-$randomString"

# OpenAI specific variables
$openAIServiceName = "az-openai-service-$randomString" #$randomString
$openAISku = "S0"
$chatCompletionsModelName = "gpt-35-turbo" # Adjust as needed
$chatCompletionsDeploymentName = "az-chat-$randomString"

# Static Web App variables
$repositoryUrl = "https://github.com/dani-salman/azure-ai-translator-accelerators"
$branchName = "main"
$webAppFolder = "document-translate-web"
$accessToken = "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" # Replace this with your GitHub access token
$staticWebAppName = "ai-translator-static-webapp-$randomString"
$staticSitesRegion = "westeurope" # Adjust as needed

# APIM variables
$ApiManagementName = "translator-apim-$randomString"
$PublisherEmail = "dani.salman@tpximpact.com"
$PublisherName = "TPXImpact"