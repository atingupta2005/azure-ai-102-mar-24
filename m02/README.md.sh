# mslearn-ai-vision
## Analyze Images with Azure AI Vision
cd ~
rm -rf ~/azure-ai-102-mar-24
git clone https://github.com/atingupta2005/azure-ai-102-mar-24

cd ~
rm -rf ~/ai-102/mslearn-ai-vision
mkdir -p ~/ai-102
cd ~/ai-102
git clone https://github.com/atingupta2005/mslearn-ai-vision
ls -al

source /pyenv/bin/activate
az login -u u1@atingupta.xyz -p changeme
az account show

cd ~/ai-102/mslearn-ai-vision/Labfiles/01*/Python/image-analysis
az cognitiveservices account keys list --name ag-ai-services-multi --resource-group rg-ai-practice
sed -i 's/mykeyneedtoreplace/replacekey/g' .env

pip install python-dotenv
pip install azure-ai-vision-imageanalysis==1.0.0b1
pip install pillow==6.2.2
pip install matplotlib

python image-analysis.py images/street.jpg
python image-analysis.py images/building.jpg
python image-analysis.py images/person.jpg
ls -al

sed -i 's/backgroundRemoval/foregroundMatting/g' image-analysis.py

python image-analysis.py images/street.jpg
python image-analysis.py images/building.jpg
python image-analysis.py images/person.jpg
ls -al

## Classify images with an Azure AI Vision custom model
##- https://github.com/MicrosoftLearning/mslearn-ai-vision/blob/main/Instructions/Exercises/02-image-classification.md#classify-images-with-an-azure-ai-vision-custom-model
cd ~/ai-102/mslearn-ai-vision/Labfiles/02*
head training-images/training_labels.json
sed -i "s|<storageAccount>|customclassifyagmar24|g" training-images/training_labels.json
head training-images/training_labels.json

### Note: Below steps are already done by trainer
##- Enable public access on the storage account. In the left pane, navigate to Configuration in the Settings group, and enable Allow Blob anonymous access
##-In the left pane, select Containers and create a new container named fruit, and set Anonymous access level to Container (anonymous read access for containers and blobs).
##- Navigate to fruit, and upload the images (and the one JSON file) in Labfiles/02-image-classification/training-images to that container


###Create a custom model training project
#- Follow instructions at URL below:
####- https://github.com/MicrosoftLearning/mslearn-ai-vision/blob/main/Instructions/Exercises/02-image-classification.md#create-a-custom-model-training-project

## Detect Objects in Images with Custom Vision
#- 03-custom-vision-object-detection(legacy).md
### Create Custom Vision resources
## - https://github.com/MicrosoftLearning/mslearn-ai-vision/blob/main/Instructions/Exercises/03-custom-vision-object-detection(legacy).md#create-custom-vision-resources
#### Already created:
#-agaicustomvisionmar24
#-agaicustomvisionmar24-prediction


### Create a Custom Vision project
###- Follow instrucionts at URL above. 
### Note: We already created this resource
cd ~/ai-102/mslearn-ai-vision/Labfiles/03*
pip install azure-cognitiveservices-vision-customvision==3.1.0
