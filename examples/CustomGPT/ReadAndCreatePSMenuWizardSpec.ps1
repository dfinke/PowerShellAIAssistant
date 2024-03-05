Import-Module $PSScriptRoot\assistantUtils.psm1 -Force

$assistant = ConvertTo-OAIAssistant -AssistantSpec (Get-Content -Raw $PSScriptRoot\PSMenuWizardSpec.json)
$assistant