<#
.SYNOPSIS
    Invokes an OpenAI API endpoint using the OpenAI-Beta header.

.DESCRIPTION
    The Invoke-OAIBeta function is used to send requests to an OpenAI API endpoint. It supports various parameters such as the URI, HTTP method, request body, content type, output file, and more.

.PARAMETER Uri
    Specifies the URI of the OpenAI API endpoint.

.PARAMETER Method
    Specifies the HTTP method to be used for the request (e.g., GET, POST, PUT, DELETE).

.PARAMETER Body
    Specifies the request body to be sent with the API request.

.PARAMETER ContentType
    Specifies the content type of the request body. The default value is 'application/json'.

.PARAMETER OutFile
    Specifies the path to save the response content to a file.

.PARAMETER UseInsecureRedirect
    Allows insecure redirects when set to true.

.PARAMETER NotOpenAIBeta
    If specified, removes the 'OpenAI-Beta' header from the request.

.EXAMPLE
    Invoke-OAIBeta -Uri 'https://api.openai.com/v1/endpoint' -Method 'GET' -OutFile 'response.json'

    This example sends a GET request to the specified API endpoint and saves the response content to a file named 'response.json'.

#>
function Invoke-OAIBeta {
    [CmdletBinding()]
    param(
        $Uri,
        $Method,
        $Body,
        $ContentType = 'application/json',
        $OutFile,
        [Switch]$UseInsecureRedirect,
        [Switch]$NotOpenAIBeta        
    )        
    
    if ($NotOpenAIBeta) {
        $headers.Remove('OpenAI-Beta')
    }

    $headers['Content-Type'] = $ContentType
    $params = @{
        Uri     = $Uri
        Method  = $Method
        Headers = $headers
    }
    
    if ($Body) {
        if ($Body -is [System.IO.Stream]) {
            $params['Body'] = $Body
        }
        else {
            $params['Body'] = $Body | ConvertTo-Json -Depth 10
        }
    }

    if ($OutFile) {
        $params['OutFile'] = $OutFile
    }

    try {
        if ($PSVersionTable.PSVersion -ge [Version]'7.4.0') {
            $params['AllowInsecureRedirect'] = $UseInsecureRedirect
        }

        Invoke-RestMethod @params
    } 
    catch {
        $message = $_.ErrorDetails.Message
        if (Test-JsonReplacement $message -ErrorAction SilentlyContinue) {            
            $targetError = $message | ConvertFrom-Json
            $targetError = $targetError.error.message
        } 
        else {
            $targetError = "[{0}] - {1}" -f $Uri, $message
        }

        Write-Error $targetError
    }
}
