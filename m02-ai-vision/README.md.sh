# mslearn-ai-vision
## -------------------------------------------------------------------------------------
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
#az login -u u1@atingupta.xyz -p changeme
az account show

cd ~/ai-102/mslearn-ai-vision/Labfiles/01*/Python/image-analysis

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
cd ~/ai-102/mslearn-ai-vision/Labfiles/02-image-classification
#head training-images/training_labels.json  # Already Done
#sed -i "s|<storageAccount>|customclassifyagmar24|g" training-images/training_labels.json # Already Done
head training-images/training_labels.json

### Note: Below steps are already done
##- Enable public access on the storage account. In the left pane, navigate to Configuration in the Settings group, and enable Allow Blob anonymous access
##-In the left pane, select Containers and create a new container named fruit, and set Anonymous access level to Container (anonymous read access for containers and blobs).
##- Navigate to fruit, and upload the images (and the one JSON file) in Labfiles/02-image-classification/training-images to that container

###Create a custom model training project-Pending
#- Follow instructions at URL below:
####- https://github.com/MicrosoftLearning/mslearn-ai-vision/blob/main/Instructions/Exercises/02-image-classification.md#create-a-custom-model-training-project



## -------------------------------------------------------------------------------------
## Detect Objects in Images with Custom Vision
### Create Custom Vision resources (Already Done)
## - https://github.com/MicrosoftLearning/mslearn-ai-vision/blob/main/Instructions/Exercises/03-custom-vision-object-detection(legacy).md#create-custom-vision-resources
#-agaicustomvisionmar24
#-agaicustomvisionmar24-prediction

### Create a Custom Vision project (Already Done)

### Add and tag images (Already Done)

### Use the Training API to upload images
cd ~/ai-102/mslearn-ai-vision/Labfiles/03-object-detection/Python/train-detector
pip install azure-cognitiveservices-vision-customvision==3.1.0
ls
cat tagged-images.json
ls images
cat train-detector.py | grep getenv
cat train-detector.py
cat ~/.env | grep Training
cat ~/.env | grep Project
python train-detector.py   # Pending. Need to debug the code as not able to upload images

### Train and test a model
### Publish the object detection model
#For all above steps refer:
###-https://github.com/MicrosoftLearning/mslearn-ai-vision/blob/main/Instructions/Exercises/03-custom-vision-object-detection(legacy).md#train-and-test-a-model

### Use the image classifier from a client application
cd ~/ai-102/mslearn-ai-vision/Labfiles/03-object-detection/Python/test-detector
pip install azure-cognitiveservices-vision-customvision==3.1.0
cat test-detector.py | grep getenv
cat ~/.env | grep Prediction
cat ~/.env | grep ProjectID
cat ~/.env | grep ModelName
python test-detector.py  # Pending - Error: Invalid iteration

