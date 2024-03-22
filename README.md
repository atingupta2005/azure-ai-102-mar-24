# AI-102

```
cd ~
rm -rf azure-ai-102-mar-24
git clone https://github.com/atingupta2005/azure-ai-102-mar-24
cd ~/azure-ai-102-mar-24
ls
```

# Lab Setup
```
cd ~
rm -rf ~/ai-102
mkdir ~/ai-102
cd ~/ai-102
git clone https://github.com/atingupta2005/mslearn-ai-services
git clone https://github.com/atingupta2005/mslearn-ai-vision
git clone https://github.com/atingupta2005/mslearn-ai-language
git clone https://github.com/atingupta2005/mslearn-ai-document-intelligence
git clone https://github.com/atingupta2005/mslearn-knowledge-mining/
git clone https://github.com/atingupta2005/mslearn-openai
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