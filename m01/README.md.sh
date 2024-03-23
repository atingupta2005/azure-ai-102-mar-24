# mslearn-ai-services
## Get Started with Azure AI Services
cd ~
rm -rf ~/azure-ai-102-mar-24
git clone https://github.com/atingupta2005/azure-ai-102-mar-24

cd ~
rm -rf ~/ai-102/mslearn-ai-services
mkdir -p ~/ai-102
cd ~/ai-102
git clone https://github.com/atingupta2005/mslearn-ai-services
ls -al

sudo chmod -R a+rw /pyenv
source /pyenv/bin/activate
az login -u u1@atingupta.xyz -p changeme
az account show


sudo chmod -R a+rw /pyenv
cd ~/ai-102/mslearn-ai-services/Labfiles/01-use-azure-ai-services/Python/rest-client/

pip install python-dotenv

python rest-client.py


cd ~/ai-102/mslearn-ai-services/Labfiles/01-use-azure-ai-services/Python/sdk-client
pip install azure-ai-textanalytics==5.3.0

python sdk-client.py

## Manage Azure AI Services Security
cd ~/ai-102/mslearn-ai-services/Labfiles/02-ai-services-security
cat ~/.env | grep AI_SERVICE_KEY
#Note: Replace key in below URL
curl -X POST "https://ag-ai-services-multi.cognitiveservices.azure.com/language/:analyze-text?api-version=2023-04-01" -H "Content-Type: application/json" -H "Ocp-Apim-Subscription-Key: replacekey" --data-ascii "{'analysisInput':{'documents':[{'id':1,'text':'hello'}]}, 'kind': 'LanguageDetection'}"

#Create a key vault and add a secret using Azure portal if not already created
  #-Key vault name: kv-ai-practice
  #-Secret Name: AI-Services-Key
  #-Secret value: The key from azure ai resource. 
  
#Createa service principal if required. Note: It is already created. No need to create
#az cognitiveservices account keys list --name ag-ai-services-multi --resource-group rg-ai-practice
#az ad sp create-for-rbac -n "api://ag-ai-services" --role owner --scopes subscriptions/6896d70c-606d-4394-a6dc-f6fb42a97dfc/resourceGroups/rg-ai-practice

#Give permissions to SP on Key Vault using Azure Portal
{
    "appId": "69bb7c51-f901-456b-ad19-83574a4fd128",
    "displayName": "api://ag-ai-services",
    "password": "Rf58Q~4~RG5EY--jXr--lME.j----0tkW7JaKb",
    "tenant": "6bb2f9af-a0af-4c32-a5ec-5f7011d37551"
}

cat ~/.env | grep APP_PASSWORD

cd ~/ai-102/mslearn-ai-services/Labfiles/02-ai-services-security/Python/keyvault_client
source /pyenv/bin/activate
#Setup Python ENV
pip install azure-ai-textanalytics==5.3.0
pip install azure-identity==1.5.0
pip install azure-keyvault-secrets==4.2.0
pip install setuptools

python keyvault-client.py


## Monitor Azure AI Services
#Configure an alert using Azure Portal
 #- https://github.com/atingupta2005/mslearn-ai-services/blob/main/Instructions/Exercises/03-monitor-ai-services.md#configure-an-alert

#Now list the keys multiple times
az cognitiveservices account keys list --name ag-ai-services-multi --resource-group rg-ai-practice

#Switch back to the browser containing the Azure portal, and refresh your Alerts page. 
  #-You should see a Sev 4 alert listed in the table (if not, wait up to five minutes and refresh again).
  

#Visualize a metric
#- https://github.com/atingupta2005/mslearn-ai-services/blob/main/Instructions/Exercises/03-monitor-ai-services.md#visualize-a-metric
#To generate some requests
cat ~/.env | grep AI_SERVICE_KEY
#Note: Replace key in below URL
curl -X POST "https://ag-ai-services-multi.cognitiveservices.azure.com/language/:analyze-text?api-version=2023-04-01" -H "Content-Type: application/json" -H "Ocp-Apim-Subscription-Key: replacekey" --data-ascii "{'analysisInput':{'documents':[{'id':1,'text':'hello'}]}, 'kind': 'LanguageDetection'}"

#Return to the Metrics page in the Azure portal and refresh the Total Calls count chart.

## Use an Azure AI Services Container
##- https://github.com/atingupta2005/mslearn-ai-services/blob/main/Instructions/Exercises/04-use-a-container.md#use-an-azure-ai-services-container

#Deploy and run a Text Analytics container using Azure Portal
##Deploy and run a Text Analytics container
##- https://github.com/atingupta2005/mslearn-ai-services/blob/main/Instructions/Exercises/04-use-a-container.md#deploy-and-run-a-text-analytics-container

##Use the container
curl -X POST "http://52.224.30.99:5000/text/analytics/v3.0/languages" -H "Content-Type: application/json" --data-ascii "{'documents':[{'id':1,'text':'Hello world.'},{'id':2,'text':'Salut tout le monde.'}]}"
