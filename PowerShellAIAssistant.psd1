@{
    RootModule        = 'PowerShellAIAssistant.psm1'
    ModuleVersion     = '0.1.0'
    GUID              = '23da7dfe-f77e-4ca6-8b69-5e69603a73ca'
    Author            = 'Douglas Finke'
    CompanyName       = 'Doug Finke'
    Copyright         = 'c 2024 All rights reserved.'

    Description       = @'
PowerShellAIAssistant integrates OpenAI's AI Assistants into PowerShell, leveraging advanced AI capabilities in your PowerShell scripts for dynamic, intelligent automation and data processing
'@

    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules   = @()

    FunctionsToExport = @(
        # Private
        'Add-OAIToolsToList'
        'Get-MultiPartFormData'
        'Invoke-OAIBeta'

        # Public
        'Clear-OAIAllItems'
        'Clear-OAIAssistants'
        'Clear-OAIFiles'
        'ConvertFrom-FunctionDefinition'
        'ConvertTo-OpenAIFunctionSpec'
        'ConvertTo-OpenAIFunctionSpecDataType'
        'Copy-OAIAssistant'
        'Enable-OAICodeInterpreter'
        'Enable-OAIRetrievalTool'
        'Export-OAIAssistant'
        'Format-OAIFunctionCall'
        'Get-FunctionDefinition'
        'Get-OAIAssistant'
        'Get-OAIAssistantItem'
        'Get-OAIFile'
        'Get-OAIFileContent'
        'Get-OAIFileItem'
        'Get-OAIMessage'
        'Get-OAIRun'
        'Get-OAIRunItem'
        'Get-OAIRunStep'
        'Get-OAIThread'
        'Get-OAIThreadItem'
        'Get-OpenAISpecDescriptions'
        'Import-OAIAssistant'
        'Invoke-OAIUploadFile'
        'New-OAIAssistant'
        'New-OAIMessage'
        'New-OAIRun'
        'New-OAIThread'
        'New-OAIThreadQuery'
        'Out-OAIMessages'
        'Remove-OAIAssistant'
        'Remove-OAIFile'
        'Remove-OAIThread'
        'Show-OAIAPIReferenceWebPage'
        'Show-OAIAssistantWebPage'
        'Show-OAIPlaygroundWebPage'
        'Submit-OAIMessage'
        'Submit-OAIToolOutputs'
        'Test-JSONReplacement'
        'Test-OAIAssistantId'
        'Update-OAIAssistant'
        'Wait-OAIOnRun'
    )

    AliasesToExport   = @(
        'goaia'
        'roaia'
        'noaia'
        'noait'
        'uoaia'
    )

    PrivateData       = @{
        PSData = @{
            Category   = "PowerShell AI Assistant Module"
            Tags       = @("PowerShell", "GPT", "OpenAI","Assistant")
            ProjectUri = "https://github.com/dfinke/PowerShellAIAssistant"
            LicenseUri = "https://github.com/dfinke/PowerShellAIAssistant/blob/main/LICENSE.txt"
        }
    }
}