# ToDo: add optional parameters for thread
<#
.SYNOPSIS
Creates a new thread using the OpenAI API.

.DESCRIPTION
The New-OAIThread function sends a POST request to the OpenAI API to create a new thread.

.PARAMETER None

.INPUTS
None. You cannot pipe input to this function.

.OUTPUTS
System.Object
The output consists of an object with the created thread id and some metadata.

.EXAMPLE
New-OAIThread
Creates a new thread using the OpenAI API.

.LINK
https://platform.openai.com/docs/api-reference/threads/createThread
#>

function New-OAIThread {
    [CmdletBinding()]

    $url = $baseUrl + '/threads'
    $Method = 'Post'

    Invoke-OAIBeta -Uri $url -Method $Method
}
