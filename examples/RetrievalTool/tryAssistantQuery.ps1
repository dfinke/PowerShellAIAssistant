. $PSScriptRoot\Invoke-AssistantQuery.ps1

$params = @{
    Instructions = 'You are a personal math tutor. Answer questions briefly, in a sentence or less.'
    UserInput    = 'What are some cool math concepts behind this ML paper pdf? Explain in two sentences.'
    FilePath     = "$PSScriptRoot\language_models_are_unsupervised_multitask_learners.pdf"
}

iaq @params

# $params = @{
#     Instructions = 'You are a personal powershell tutor. Answer questions briefly, in a sentence or less.'
#     UserInput    = 'What does this script do?'
#     FilePath     = "$PSScriptRoot\Invoke-AssistantQuery.ps1"
# }

# iaq @params