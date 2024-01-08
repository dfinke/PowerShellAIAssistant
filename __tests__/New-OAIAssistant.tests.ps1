Describe 'New-OAIAssistant' -Tag New-OAIAssistant {
    BeforeAll {
        Import-Module "$PSScriptRoot/../PowerShellAIAssistant.psd1" -Force
    }

    It 'should have these parameters ' {
        $actual = Get-Command New-OAIAssistant -ErrorAction SilentlyContinue
     
        $actual | Should -Not -BeNullOrEmpty

        $actual.Parameters.Keys.Contains('name') | Should -Be $true
        $actual.Parameters.Keys.Contains('Description') | Should -Be $true
        $actual.Parameters.Keys.Contains('instructions') | Should -Be $true
        $actual.Parameters.Keys.Contains('Metadata') | Should -Be $true
        
        $actual.Parameters.Keys.Contains('FileIds') | Should -Be $true
        $actual.Parameters.FileIds.Aliases.Count | Should -Be 1
        $actual.Parameters.FileIds.Aliases | Should -Be 'file_ids'
        
        $actual.Parameters.Keys.Contains('Tools') | Should -Be $true
        $validateSet = $actual.Parameters.Tools.Attributes | Where-Object { $_ -is [System.Management.Automation.ValidateSetAttribute] }

        $actual.Parameters.Keys.Contains('model') | Should -Be $true
        $validateSet = $actual.Parameters.model.Attributes | Where-Object { $_ -is [System.Management.Automation.ValidateSetAttribute] }
        $validateSet | Should -Not -BeNullOrEmpty
        $validateSet[0].ValidValues | Should -Be @('gpt-4', 'gpt-3.5-turbo', 'gpt-3.5-turbo-16k', 'gpt-4-1106-preview', 'gpt-3.5-turbo-1106')
    }
}