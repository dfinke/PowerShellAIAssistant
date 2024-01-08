<p align="center">  
  <!-- <a href="https://twitter.com/dfinke">
    <img src="https://img.shields.io/badge/Twitter-@dfinke-blue.svg?logo=twitter&style=flat-square">
  </a> -->
  <!-- https://img.shields.io/twitter/follow/dfinke.svg?style=social&label=Follow%20%40dfinke -->
  <a href="https://x.com/dfinke">
    <img src="https://img.shields.io/twitter/follow/dfinke.svg?style=social&label=Follow%20%40dfinke">
  </a>
  <a href="https://youtube.com/@dougfinke">
    <img src="https://img.shields.io/youtube/channel/subscribers/UCP47ZkO5EDkoI2sr-3P4ShQ">
  </a>  
  <!-- <a href="https://www.powershellgallery.com/packages/PowerShellAIAssistant/">
    <img src="https://img.shields.io/powershellgallery/v/PowerShellAIAssistant.svg">
  </a>  
  <a href="https://www.powershellgallery.com/packages/PowerShellAIAssistant/">
    <img src="https://img.shields.io/powershellgallery/dt/PowerShellAIAssistant.svg">
  </a> -->
</p> 


Example code accomplishing common tasks with the [OpenAI API](https://platform.openai.com/docs/introduction). To run these examples

First, create an [OpenAI account](https://platform.openai.com/signup) or [sign in](https://platform.openai.com/login). Next, navigate to the [API key page](https://platform.openai.com/account/api-keys) and "Create new secret key", optionally naming the key. Make sure to save this somewhere safe and do not share it with anyone.

Run the [Sanity-Check](/examples/Sanity-Check.ps1) script first. You need the API key to run it. It creates and deletes a assistant on the backend. If it works, you're good to go.

> Note: `Get-OAIAssistant` requires PowerShell 7.4 or higher. It needs the `AllowInsecureRedirect` parameter, a workaround is being investigated.

If you don't have PowerShell 7.4 or higher, you can use CodeSpaces to run the example. Click the button below to open CodeSpaces.

<!-- 
query {
  repository (name: "powershellaiassistant-prerelease", owner: "dfinke")  {
        databaseId
  }
}
-->

<a href="https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=739751034&machine=standardLinux32gb&devcontainer_path=.devcontainer%2Fdevcontainer.json&location=East">
     <img src="https://img.shields.io/static/v1?style=for-the-badge&label=GitHub+Codespaces&message=Open&color=brightgreen&logo=github"/>
</a>
<br/>

----

Welcome to `PowerShell AI Assistant`, a module designed for seamless integration with `OpenAI Assistant` APIs, providing a rich set of functionalities to empower your PowerShell scripts with the latest AI technologies. Dive into an enhanced scripting experience by leveraging an AI-powered assistant in your console.

## Why PowerShell AI Assistant?

`PowerShell AI Assistant` is where advanced AI meets PowerShell scripting. With this module, you can create interactive, intelligent scripts and applications that understand and process natural language with ease.

## Examples

There is one example and it is in a Polyglot Interactive Notebook.

[Assistants API overview](examples/Assistants_API_overview.ipynb) - this notebook shows how to use the Assistants API to build a simple question answering interaction.

## Features

- Easy integration with OpenAI's Assistants API
- Build conversational AI models within PowerShell
- Access a suite of AI capabilities for natural language processing, understanding, and decision making
- Extend your automation scripts with smart AI assistant features


## Build With Us - In Public!

I am developing `PowerShell AI Assistant` transparently, and I welcome you to participate in this innovative journey:

- **Transparency**: Witness the development process as it unfolds.
- **Collaboration**: Contribute ideas, code, or feedback to help shape the project.
- **Education**: Observe and learn from ongoing development practices and community interaction.

## About the Author

I am [Doug Finke](https://github.com/dfinke), a PowerShell expert, AI developer, and a 15x Microsoft MVP, dedicated to merging the potential of AI with the flexibility of PowerShell.

## Stay Updated!

Follow the project's progress and stay in touch by following me on 
- [X](https://x.com/dfinke)
- [YouTube](https://www.youtube.com/@DougFinke)
- [LinkedIn](https://www.linkedin.com/in/douglasfinke/)

and by watching the repo.

I'm excited to see how `PowerShell AI Assistant` will revolutionize your scripting and automation tasks.

Join us to push the boundaries of what's possible with AI in PowerShell!