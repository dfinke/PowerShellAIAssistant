('Private','Public') | Foreach-Object {
	Get-ChildItem -Path $(Join-Path -Path $PSScriptRoot -ChildPath $_) -Filter "*.ps1" | Foreach-Object { . $_.FullName }
}

$script:EnableUnitTesting = $false
$script:InvokeOAIUnitTestingData = $null

$script:OAIProvider = 'OpenAI'

$script:AzOAISecrets = @{
    apiURI         = $null
    apiKEY         = $null
    apiVersion     = $null
    deploymentName = $null
}

$script:baseUrl = "https://api.openai.com/v1"

# $script:headers = @{
#     'OpenAI-Beta'   = 'assistants=v1'
#     'Authorization' = "Bearer $env:OpenAIKey"
# }

# Aliases
Set-Alias goaia Get-OAIAssistant
Set-Alias roaia Remove-OAIAssistant
Set-Alias noaia New-OAIAssistant
Set-Alias noait New-OAIThread
Set-Alias uoaia Update-OAIAssistant
Set-Alias ai Invoke-OAIChat
