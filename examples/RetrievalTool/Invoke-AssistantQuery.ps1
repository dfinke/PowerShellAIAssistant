function Invoke-AssistantQuery {
    param (
        [Parameter(Mandatory)]
        $UserInput,
        [Parameter(Mandatory)]
        $FilePath,
        [Parameter(Mandatory)]
        $Instructions
    )

    $file = Invoke-OAIUploadFile -Path $FilePath

    $assistantParams = @{
        Name         = 'Assistant'
        Instructions = $Instructions
        FileIds      = $file.id
        Tools        = Enable-OAIRetrievalTool
        Model        = 'gpt-4-1106-preview'
    }

    $assistant = New-OAIAssistant @assistantParams

    $result = New-OAIThreadQuery -UserInput $UserInput -Assistant $assistant
    $result.run = Wait-OAIOnRun -Run $result.run -Thread $result.thread

    Out-OAIMessages -Messages (Get-OAIMessage -ThreadId $result.thread.id -Order asc -After $result.message.id).data

    $null = Remove-OAIFile -id $file.id
    $null = Remove-OAIAssistant -Id $assistant.id
}

Set-Alias iaq Invoke-AssistantQuery
