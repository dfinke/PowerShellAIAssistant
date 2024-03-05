# function ConvertFrom-OAIAssistant {
#     param(
#         [Parameter(Mandatory)]
#         $Assistant
#     )

#     $assistantProperties = $assistant | ConvertTo-Json -Depth 10 | ConvertFrom-Json -Depth 10 -AsHashtable

#     # remove these properties
#     $assistantProperties.remove("id")
#     $assistantProperties.remove("object")
#     $assistantProperties.remove("created_at")

#     $assistantProperties | ConvertTo-Json -Depth 10 
# }

# $assistantParam = @{
#     Name         = 'PowerShell Menu Wizard'
#     Description  = 'Creates PowerShell menu scripts based on your input.' 
#     Instructions = 'You are a helpful assistant'
# }

# function ConvertTo-OAIAssistant {
#     param(
#         [Parameter(Mandatory)]
#         $AssistantSpec
#     )

#     # Test-JsonReplacement -Json $AssistantSpec
#     if (Test-JsonReplacement -Json $AssistantSpec) {
#         $assistantParams = $AssistantSpec | ConvertFrom-Json -Depth 10 -AsHashtable
        
#         New-OAIAssistant @assistantParams
#     }
#     else {
#         Write-Error "Invalid assistant spec"
#     }
# }

ipmo $PSScriptRoot\assistantUtils.psm1

$assistant = New-OAIAssistant @assistantParam
$j = ConvertFrom-OAIAssistant $assistant

$newAssistant = ConvertTo-OAIAssistant $j

$newAssistant

$null = Remove-OAIAssistant $assistant.id
$null = Remove-OAIAssistant $newAssistant.id
