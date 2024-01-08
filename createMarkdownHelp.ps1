$Build = @{
    Docs = @{
        Locale    = 'en-US'
        Directory = "$PSScriptRoot/docs/commands"
    }
}

$newHelpArgs = @{
    Module                = 'PowerShellAIAssistant'
    OutputFolder          = $Build.Docs.Directory
    Locale                = $Build.Docs.Locale
    AlphabeticParamsOrder = $true
    ExcludeDontShow       = $true
    ErrorAction           = 'SilentlyContinue'
}

$null = mkdir $Build.Docs.Directory -ErrorAction SilentlyContinue
$null = New-MarkdownHelp @newHelpArgs