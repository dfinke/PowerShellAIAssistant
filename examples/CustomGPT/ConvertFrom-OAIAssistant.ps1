function ConvertFrom-OAIAssistant {
    param(
        [Parameter(Mandatory)]
        $Assistant
    )

    $assistantProperties = $assistant | ConvertTo-Json -Depth 10 | ConvertFrom-Json -Depth 10 -AsHashtable

    # remove these properties
    $assistantProperties.remove("id")
    $assistantProperties.remove("object")
    $assistantProperties.remove("created_at")

    $assistantProperties | ConvertTo-Json -Depth 10 
}