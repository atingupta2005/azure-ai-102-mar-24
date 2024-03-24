# mslearn-ai-vision
## https://github.com/atingupta2005/mslearn-knowledge-mining/
cd ~
rm -rf ~/azure-ai-102-mar-24
git clone https://github.com/atingupta2005/azure-ai-102-mar-24

cd ~
rm -rf ~/ai-102/mslearn-knowledge-mining
mkdir -p ~/ai-102
cd ~/ai-102
git clone https://github.com/atingupta2005/mslearn-knowledge-mining/

sudo chmod -R a+rw /pyenv
p
source /pyenv/bin/activate
az account show

## ------------------------------------------------------------------

## Demo: Create an Azure AI Search solution
## https://github.com/atingupta2005/mslearn-knowledge-mining/blob/main/Instructions/Exercises/01-azure-search.md
cd ~/ai-102/mslearn-knowledge-mining/Labfiles/01*/
source ~/.env
chmod a+x UploadDocs.sh
. ./UploadDocs.sh
cat ./modify-search/skillset.json | grep key
echo $AI_SEARCH_ADMIN_KEY

cd ~/ai-102/mslearn-knowledge-mining/Labfiles/01*/modify-search
sed -i "s/YOUR_COGNITIVE_SERVICES_KEY/$AI_SEARCH_ADMIN_KEY/g" ./skillset.json
cat ./skillset.json | grep key
cat ./skillset.json
cat ./index.json
chmod a+x ./modify-search.sh
. ./modify-search.sh

cd ~/ai-102/mslearn-knowledge-mining/Labfiles/01*/Python/margies-travel
pip install azure-search-documents==11.0.0
pip install Flask
cat app.py | grep getenv
cat ~/.env | grep SEARCH_SERVICE
flask run --host=0.0.0.0 --port=500$(whoami | tail -c 3)
## Press CTRL+C to exit


## ------------------------------------------------------------------

## Lab: Create a Custom Skill for Azure AI Search
## https://github.com/atingupta2005/mslearn-knowledge-mining/blob/main/Instructions/Exercises/02-search-skills.md
cd ~/ai-102/mslearn-knowledge-mining/Labfiles/02*/create-search
source ~/.env
cat data_source.json | grep connectionString
echo $AZURE_STORAGE_CONNECTION_STRING
echo $AI_SEARCH_ADMIN_KEY
echo $AI_SEARCH_URL
sed -i "s/YOUR_CONNECTION_STRING/$AZURE_STORAGE_CONNECTION_STRING/g" ./data_source.json
sed -i "s/YOUR_AI_SERVICES_KEY/$AI_SERVICE_KEY/g" ./skillset.json
cat data_source.json | grep connectionString
cat skillset.json | grep key
cat ./create-search.sh | grep admin_key
cat ./create-search.sh | grep url
chmod a+x ./create-search.sh
. ./create-search.sh          # This search is not being created. Due to this further commands below also not working
# Follow the same steps in above script using azure portal


cd ~/ai-102/mslearn-knowledge-mining/Labfiles/02*/update-search
source ~/.env
cat update-skillset.json | grep key
cat update-skillset.json | grep uri
sed -i "s/YOUR_AI_SERVICES_KEY/$AI_SEARCH_ADMIN_KEY/g" ./update-skillset.json
sed -i "s|YOUR_FUNCTION_APP_URL|$WORDCOUNT_FUNCTION_APP_URL|g" ./update-skillset.json
cat update-skillset.json | grep key
cat update-skillset.json | grep uri
cat ./update-search.sh
. ./update-search.sh

# Follow the same steps in above script using azure portal

###-Now search index using azure portal. Follow the steps as mentioned in above URL

## ------------------------------------------------------------------

## Extra (Optional): Create a Knowledge Store with Azure AI Search
## https://github.com/atingupta2005/mslearn-knowledge-mining/blob/main/Instructions/Exercises/03-knowledge-store.md
cd ~/ai-102/mslearn-knowledge-mining/Labfiles/03*/create-search
ls
source ~/.env
cat data_source.json | grep connectionString
cat skillset.json | grep key
cat skillset.json | grep storageConnectionString
echo $AZURE_STORAGE_CONNECTION_STRING
echo $AI_SEARCH_ADMIN_KEY
sed -i "s/YOUR_CONNECTION_STRING/$AZURE_STORAGE_CONNECTION_STRING/g" ./data_source.json
sed -i "s/YOUR_AI_SERVICES_KEY/$AI_SERVICE_KEY/g" ./skillset.json
sed -i "s/YOUR_CONNECTION_STRING/$AZURE_STORAGE_CONNECTION_STRING/g" ./skillset.json
cat data_source.json | grep connectionString
cat skillset.json | grep key
cat skillset.json | grep storageConnectionString
chmod a+x ./create-search.sh
cat ./create-search.sh
. ./create-search.sh
# Follow the same steps in above script using azure portal

# Now follow the steps on the above URL to View the knowledge store


## ------------------------------------------------------------------

## Extra (Optional): Enrich an AI search index with custom classes
## https://github.com/atingupta2005/mslearn-knowledge-mining/blob/main/Instructions/Exercises/04-exercise-enrich-cognitive-custom-classes.md
cd ~/ai-102/mslearn-knowledge-mining/Labfiles/04*/Python


## ------------------------------------------------------------------

## Implement enhancements to search results
## https://github.com/atingupta2005/mslearn-knowledge-mining/blob/main/Instructions/Exercises/05-exercise-implement-enhancements-to-search-results.md
cd ~/ai-102/mslearn-knowledge-mining/Labfiles/05*/Python


## ------------------------------------------------------------------

## Extra (Optional): Enrich a search index using Azure Machine Learning model
## https://github.com/atingupta2005/mslearn-knowledge-mining/blob/main/Instructions/Exercises/06-exercise-enrich-search-index-use-model.md
cd ~/ai-102/mslearn-knowledge-mining/Labfiles/06*/Python


## ------------------------------------------------------------------

## Extra (Optional): Debug search issues
## https://github.com/atingupta2005/mslearn-knowledge-mining/blob/main/Instructions/Exercises/08-exercise-debug-search-issues.md
cd ~/ai-102/mslearn-knowledge-mining/Labfiles/08*/Python


## ------------------------------------------------------------------

## Extra (Optional): Set up semantic ranker
## https://github.com/atingupta2005/mslearn-knowledge-mining/blob/main/Instructions/Exercises/09-semantic-search-exercise.md
cd ~/ai-102/mslearn-knowledge-mining/Labfiles/09*/Python


## ------------------------------------------------------------------

## Extra (Optional): Use the REST API to run vector search queries
## https://github.com/atingupta2005/mslearn-knowledge-mining/blob/main/Instructions/Exercises/10-vector-search-exercise.md
cd ~/ai-102/mslearn-knowledge-mining/Labfiles/10*/Python


## ------------------------------------------------------------------
