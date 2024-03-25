# AI-102

## Lab Setup
### Create Windows 11 VM in Azure Cloud

### Install Choco in powershell
```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

### Exit powershell
```
exit
```

### Open powershell and install
```
choco install git -y
choco install googlechrome -y
choco install vscode -y
choco install python -y
choco install dotnetcore-sdk -y
choco install azure-cli -y
Restart-Computer
```

### Clone Repos in another powershell
```
md c:\ai-102
cd c:\ai-102
git clone https://github.com/MicrosoftLearning/mslearn-ai-services
git clone https://github.com/MicrosoftLearning/mslearn-ai-vision
git clone https://github.com/MicrosoftLearning/mslearn-ai-language
git clone https://github.com/MicrosoftLearning/mslearn-ai-document-intelligence
git clone https://github.com/MicrosoftLearning/mslearn-knowledge-mining/
git clone https://github.com/MicrosoftLearning/mslearn-openai
dir
```

### Create Python Virtual Environment
```
python -m venv c:\venv
```


### Connect to Azure CLI
```
az login -u u1@atingupta.xyz -p password
az account show
```

## Provision Azure resources
### Create an Azure AI services multi-service account resource
- Name: ag-ai-services-multi
- Resource Group: rg-ai-practice
- Region: Choose from East US, West Europe, West US 2

#### Get key in CLI:
```
az cognitiveservices account keys list --name ag-ai-services-multi --resource-group rg-ai-practice
```

### Create Key Vault
- Name: kv-ai-practice
- Secret Name: AI-Services-Key
- Secret Value: The key of Azure AI services multi-service account resource

### Create Storage account
- Name: customclassifyagmar24
- Region: Choose the same region you used for your Azure AI Service resource


## Important URLs:
 - https://github.com/MicrosoftLearning/mslearn-ai-services
 - https://github.com/MicrosoftLearning/mslearn-ai-vision
 - https://github.com/MicrosoftLearning/mslearn-ai-language
 - https://github.com/MicrosoftLearning/mslearn-ai-document-intelligence
 - https://github.com/MicrosoftLearning/mslearn-knowledge-mining/
 - https://github.com/MicrosoftLearning/mslearn-openai
