# mslearn-ai-vision
## https://github.com/atingupta2005/mslearn-ai-vision
## -------------------------------------------------------------------------------------
## Lab: Analyze Images with Azure AI Vision
### https://github.com/atingupta2005/mslearn-ai-vision/blob/main/Instructions/Exercises/01-analyze-images.md
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

relative_path=$(pwd | sed "s|^$HOME/||")

python image-analysis.py images/street.jpg
echo http://vm-ubuntu-ai-102.eastus2.cloudapp.azure.com:8787/files/$relative_path/images/street.jpg
echo http://vm-ubuntu-ai-102.eastus2.cloudapp.azure.com:8787/files/$relative_path/backgroundForeground.png
python image-analysis.py images/building.jpg
echo http://vm-ubuntu-ai-102.eastus2.cloudapp.azure.com:8787/files/$relative_path/images/building.jpg
echo http://vm-ubuntu-ai-102.eastus2.cloudapp.azure.com:8787/files/$relative_path/backgroundForeground.png
python image-analysis.py images/person.jpg
echo http://vm-ubuntu-ai-102.eastus2.cloudapp.azure.com:8787/files/$relative_path/images/person.jpg
echo http://vm-ubuntu-ai-102.eastus2.cloudapp.azure.com:8787/files/$relative_path/backgroundForeground.png

sed -i 's/backgroundRemoval/foregroundMatting/g' image-analysis.py

python image-analysis.py images/street.jpg
echo http://vm-ubuntu-ai-102.eastus2.cloudapp.azure.com:8787/files/$relative_path/images/street.jpg
echo http://vm-ubuntu-ai-102.eastus2.cloudapp.azure.com:8787/files/$relative_path/backgroundForeground.png
python image-analysis.py images/building.jpg
echo http://vm-ubuntu-ai-102.eastus2.cloudapp.azure.com:8787/files/$relative_path/images/building.jpg
echo http://vm-ubuntu-ai-102.eastus2.cloudapp.azure.com:8787/files/$relative_path/backgroundForeground.png
python image-analysis.py images/person.jpg
echo http://vm-ubuntu-ai-102.eastus2.cloudapp.azure.com:8787/files/$relative_path/images/person.jpg
echo http://vm-ubuntu-ai-102.eastus2.cloudapp.azure.com:8787/files/$relative_path/backgroundForeground.png


## -------------------------------------------------------------------------
## Lab: Classify images with an Azure AI Vision custom model
##- https://github.com/MicrosoftLearning/mslearn-ai-vision/blob/main/Instructions/Exercises/02-image-classification.md#classify-images-with-an-azure-ai-vision-custom-model
cd ~/ai-102/mslearn-ai-vision/Labfiles/02-image-classification
#head training-images/training_labels.json  # Already Done
#sed -i "s|<storageAccount>|customclassifyagmar24|g" training-images/training_labels.json # Already Done
head training-images/training_labels.json

### Note: Below steps are already done
##- Enable public access on the storage account. In the left pane, navigate to Configuration in the Settings group, and enable Allow Blob anonymous access
##-In the left pane, select Containers and create a new container named fruit, and set Anonymous access level to Container (anonymous read access for containers and blobs).
##- Navigate to fruit, and upload the images (and the one JSON file) in Labfiles/02-image-classification/training-images to that container

###Create a custom model training project
#- Follow instructions at URL below:
####- https://github.com/MicrosoftLearning/mslearn-ai-vision/blob/main/Instructions/Exercises/02-image-classification.md#create-a-custom-model-training-project


## -------------------------------------------------------------------------------------
## Demo: Detect Objects in Images with Custom Vision
### https://github.com/atingupta2005/mslearn-ai-vision/blob/main/Instructions/Exercises/03-custom-vision-object-detection(legacy).md
### Create Custom Vision resources (Already Done)
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
python train-detector.py

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
python test-detector.py  # Pending - Error: Invalid project type for operation

## -------------------------------------------------------------------------

## Demo: Detect and Analyze Faces
### https://github.com/MicrosoftLearning/mslearn-ai-vision/blob/main/Instructions/Exercises/04-face-service.md
pip install azure-ai-vision==0.15.1b1
cd ~/ai-102/mslearn-ai-vision/Labfiles/04*/Python/computer-vision
cat detect-people.py | grep getenv
cat ~/.env | grep AI_SERVICE
python detect-people.py
relative_path=$(pwd | sed "s|^$HOME/||")
echo http://vm-ubuntu-ai-102.eastus2.cloudapp.azure.com:8787/files/$relative_path/images/people.jpg
echo http://vm-ubuntu-ai-102.eastus2.cloudapp.azure.com:8787/files/$relative_path/detected_people.jpg

cd ~/ai-102/mslearn-ai-vision/Labfiles/04*/Python/face-api
pip install azure-cognitiveservices-vision-face==0.6.0
python analyze-faces.py   # Enter 1 as a number
relative_path=$(pwd | sed "s|^$HOME/||")
echo http://vm-ubuntu-ai-102.eastus2.cloudapp.azure.com:8787/files/$relative_path/detected_faces.jpg

## -------------------------------------------------------------------------

## Lab: Read Text in Images
### https://github.com/MicrosoftLearning/mslearn-ai-vision/blob/main/Instructions/Exercises/05-ocr.md
cd ~/ai-102/mslearn-ai-vision/Labfiles/05*/Python/read-text
pip install azure-ai-vision-imageanalysis==1.0.0b1
python read-text.py
relative_path=$(pwd | sed "s|^$HOME/||")
echo http://vm-ubuntu-ai-102.eastus2.cloudapp.azure.com:8787/files/$relative_path/images/Lincoln.jpg
echo http://vm-ubuntu-ai-102.eastus2.cloudapp.azure.com:8787/files/$relative_path/images/Note.jpg
echo http://vm-ubuntu-ai-102.eastus2.cloudapp.azure.com:8787/files/$relative_path/text.jpg


## -------------------------------------------------------------------------

## Demo: Analyze Video with Video Analyzer
### https://github.com/MicrosoftLearning/mslearn-ai-vision/blob/main/Instructions/Exercises/06-video-indexer.md
### Follow instructions at above URL
cd ~/ai-102/mslearn-ai-vision/Labfiles/06*/
cat ~/.env | grep VIDEO
chmod a+x ./get-videos.sh
./get-videos.sh

## -------------------------------------------------------------------------

## Lab: Classify Images with Azure AI Custom Vision
### https://github.com/MicrosoftLearning/mslearn-ai-vision/blob/main/Instructions/Exercises/07-custom-vision-image-classification(legacy).md
###- Follow instructions as above URL

### Publish the image classification model
### Refer to instructions at above URL

### Use the image classifier from a client application
cd ~/ai-102/mslearn-ai-vision/Labfiles/07*/Python/train-classifier
pip install azure-cognitiveservices-vision-customvision==3.1.0
cat train-classifier.py | grep getenv
cat ~/.env | grep Training
cat ~/.env | grep ProjectID

# The tag names should match with the folder names else error will be throws
python train-classifier.py

cd ~/ai-102/mslearn-ai-vision/Labfiles/07*/Python/test-classifier
cat test-classifier.py | grep getenv
cat ~/.env | grep Prediction
cat ~/.env | grep ProjectID
cat ~/.env | grep ModelName
python test-classifier.py 

