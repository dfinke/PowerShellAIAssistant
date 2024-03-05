Import-Module d:\mygit\PowerShellAIAssistant\examples\CustomGPT\assistantUtils.psm1 -Force

$file = "d:\mygit\PowerShellAIAssistant\examples\CustomGPT\PSMenuWizardSpec.json"

# $assistant = ConvertTo-OAIAssistant $file
# if ($assistant) {
#     $assistant
#     $null = Remove-OAIAssistant $assistant.id
# }

# $assistant = ConvertTo-OAIAssistant (Get-Content $file -Raw)

# if ($assistant) {
#     $assistant
#     $null = Remove-OAIAssistant $assistant.id
# }

$assistant = ConvertTo-OAIAssistant ($file + ".yyz")
$assistant = ConvertTo-OAIAssistant $file
$assistant.name
if ($assistant) {
    $null = Remove-OAIAssistant $assistant.id
}

