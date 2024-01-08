. $PSScriptRoot/Private/Add-OAIToolsToList.ps1
. $PSScriptRoot/Private/Invoke-OAIBeta.ps1
. $PSScriptRoot/Private/Get-MultipartFormData.ps1

. $PSScriptRoot/Public/Clear-OAIAllItems.ps1
. $PSScriptRoot/Public/Clear-OAIAssistants.ps1
. $PSScriptRoot/Public/Clear-OAIFiles.ps1
. $PSScriptRoot/Public/ConvertFrom-FunctionDefinition.ps1
. $PSScriptRoot/Public/ConvertTo-OpenAIFunctionSpec.ps1
. $PSScriptRoot/Public/ConvertTo-OpenAIFunctionSpecDataType.ps1
. $PSScriptRoot/Public/Copy-OAIAssistant.ps1
. $PSScriptRoot/Public/Enable-OAICodeInterpreter.ps1
. $PSScriptRoot/Public/Enable-OAIRetrievalTool.ps1
. $PSScriptRoot/Public/Export-OAIAssistant.ps1
. $PSScriptRoot/Public/Format-OAIFunctionCall.ps1
. $PSScriptRoot/Public/Get-FunctionDefinition.ps1
. $PSScriptRoot/Public/Get-OAIAssistant.ps1
. $PSScriptRoot/Public/Get-OAIAssistantItem.ps1
. $PSScriptRoot/Public/Get-OAIFile.ps1
. $PSScriptRoot/Public/Get-OAIFileContent.ps1
. $PSScriptRoot/Public/Get-OAIFileItem.ps1
. $PSScriptRoot/Public/Get-OAIMessage.ps1
. $PSScriptRoot/Public/Get-OAIRun.ps1
. $PSScriptRoot/Public/Get-OAIRunItem.ps1
. $PSScriptRoot/Public/Get-OAIRunStep.ps1
. $PSScriptRoot/Public/Get-OAIThread.ps1
. $PSScriptRoot/Public/Get-OAIThreadItem.ps1
. $PSScriptRoot/Public/Get-OpenAISpecDescriptions.ps1
. $PSScriptRoot/Public/Import-OAIAssistant.ps1
. $PSScriptRoot/Public/Invoke-OAIUploadFile.ps1
. $PSScriptRoot/Public/New-OAIAssistant.ps1
. $PSScriptRoot/Public/New-OAIMessage.ps1
. $PSScriptRoot/Public/New-OAIRun.ps1
. $PSScriptRoot/Public/New-OAIThread.ps1
. $PSScriptRoot/Public/New-OAIThreadQuery.ps1
. $PSScriptRoot/Public/Out-OAIMessages.ps1
. $PSScriptRoot/Public/Remove-OAIAssistant.ps1
. $PSScriptRoot/Public/Remove-OAIFile.ps1
. $PSScriptRoot/Public/Remove-OAIThread.ps1
. $PSScriptRoot/Public/Show-OAIAPIReferenceWebPage.ps1
. $PSScriptRoot/Public/Show-OAIAssistantWebPage.ps1
. $PSScriptRoot/Public/Show-OAIPlaygroundWebPage.ps1
. $PSScriptRoot/Public/Submit-OAIMessage.ps1
. $PSScriptRoot/Public/Submit-OAIToolOutputs.ps1
. $PSScriptRoot/Public/Test-JSONReplacement.ps1
. $PSScriptRoot/Public/Test-OAIAssistantId.ps1
. $PSScriptRoot/Public/Update-OAIAssistant.ps1
. $PSScriptRoot/Public/Wait-OAIOnRun.ps1

$script:baseUrl = "https://api.openai.com/v1"

$script:headers = @{
    'OpenAI-Beta'   = 'assistants=v1'
    'Authorization' = "Bearer $env:OpenAIKey"
}

# Aliases
Set-Alias goaia Get-OAIAssistant
Set-Alias roaia Remove-OAIAssistant
Set-Alias noaia New-OAIAssistant
Set-Alias noait New-OAIThread
Set-Alias uoaia Update-OAIAssistant