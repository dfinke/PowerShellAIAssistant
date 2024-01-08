<#
    Ensure you have your OpenAI API key set in your environment variables.
    
    $env:OPENAI_API_KEY = 'sk-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
#>

Import-Module $PSScriptRoot\..\PowerShellAIAssistant.psm1 -Force

# Comment: Create a new instance of the OAIAssistant and assign it to the variable $assistant
$assistant = New-OAIAssistant

# Comment: Output the details of the $assistant object
$assistant

# Comment: Remove the OAIAssistant instance using the Remove-OAIAssistant cmdlet and passing the $assistant.Id as the parameter
Remove-OAIAssistant -Id $assistant.Id