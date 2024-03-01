<#
Another powerful tool in the Assistants API is Retrieval 

The ability to upload files that the Assistant will use as a knowledge base when answering questions. This can also be enabled from the Dashboard or the API, where we can upload files we want to be used.
#>

$UserInput = 'What are some cool math concepts behind this ML paper pdf? Explain in two sentences.' 

$file = Invoke-OAIUploadFile -Path $PSScriptRoot\language_models_are_unsupervised_multitask_learners.pdf

$assistantParams = @{
    Name         = 'Math Tutor'
    Instructions = 'You are a personal math tutor. Answer questions briefly, in a sentence or less.'
    FileIds      = $file.id
    Tools        = Enable-OAIRetrievalTool
    Model        = 'gpt-4-1106-preview'
}

$assistant = New-OAIAssistant @assistantParams

 $result = New-OAIThreadQuery -UserInput $UserInput -Assistant $assistant
 $result.run = Wait-OAIOnRun -Run $result.run -Thread $result.thread
 Out-OAIMessages -Messages (Get-OAIMessage -ThreadId $result.thread.id -Order asc -After $result.message.id).data


Remove-OAIFile -id $file.id
Remove-OAIAssistant -Id $assistant.id
