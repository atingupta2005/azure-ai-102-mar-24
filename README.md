# AI-102

```
sudo snap install imgcat
sudo snap install timg 
sudo apt install jq tree vim nano -y
```

```
cd ~
rm -rf azure-ai-102-mar-24
git clone https://github.com/atingupta2005/azure-ai-102-mar-24
cd ~/azure-ai-102-mar-24
ls
```

## Lab Setup
```
cd ~
rm -rf ~/ai-102
mkdir ~/ai-102
cd ~/ai-102
git clone https://github.com/atingupta2005/mslearn-ai-services
git clone https://github.com/atingupta2005/mslearn-ai-vision
git clone https://github.com/atingupta2005/mslearn-ai-language
git clone https://github.com/atingupta2005/mslearn-openai
git clone https://github.com/atingupta2005/mslearn-knowledge-mining/
git clone https://github.com/atingupta2005/mslearn-ai-document-intelligence
ls
```


## Connect to Azure CLI
```
sudo chmod -R a+rw /pyenv
source /pyenv/bin/activate
# Ask password from trainer
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


### Important URLs:
#### This Repo
- https://github.com/atingupta2005/azure-ai-102-mar-24

#### Hands-on
- https://github.com/atingupta2005/mslearn-ai-services
- https://github.com/atingupta2005/mslearn-ai-vision
- https://github.com/atingupta2005/mslearn-ai-language
- https://github.com/atingupta2005/mslearn-ai-document-intelligence
- https://github.com/atingupta2005/mslearn-knowledge-mining/
- https://github.com/atingupta2005/mslearn-openai

#### Others
- https://portal.azure.com/
- http://vm-ubuntu-ai-102.eastus2.cloudapp.azure.com:8787/auth-sign-in
