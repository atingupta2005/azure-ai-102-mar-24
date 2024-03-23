# mslearn-ai-vision
## Analyze Images with Azure AI Vision
###- https://github.com/MicrosoftLearning/mslearn-ai-vision/blob/main/Instructions/Exercises/01-analyze-images.md
cd ~
rm -rf ~/azure-ai-102-mar-24
git clone https://github.com/atingupta2005/azure-ai-102-mar-24

cd ~
rm -rf ~/ai-102/mslearn-ai-vision
mkdir -p ~/ai-102
cd ~/ai-102
git clone https://github.com/atingupta2005/mslearn-ai-vision
ls -al

sudo chmod -R a+rw /pyenv
p
source /pyenv/bin/activate
az login -u u1@atingupta.xyz -p changeme
az account show

cd ~/ai-102/mslearn-ai-vision/Labfiles/01*/Python/image-analysis
pip install azure-ai-vision==0.15.1b1

pip install python-dotenv


## Classify images with an Azure AI Vision custom model
### https://github.com/MicrosoftLearning/mslearn-ai-vision/blob/main/Instructions/Exercises/02-image-classification.md



## Detect Objects in Images with Custom Vision
### https://github.com/MicrosoftLearning/mslearn-ai-vision/blob/main/Instructions/Exercises/03-custom-vision-object-detection(legacy).md



## Detect and Analyze Faces
### https://github.com/MicrosoftLearning/mslearn-ai-vision/blob/main/Instructions/Exercises/04-face-service.md



## Read Text in Images
### https://github.com/MicrosoftLearning/mslearn-ai-vision/blob/main/Instructions/Exercises/05-ocr.md



## Analyze Video with Video Analyzer
### https://github.com/MicrosoftLearning/mslearn-ai-vision/blob/main/Instructions/Exercises/06-video-indexer.md


## Classify Images with Azure AI Custom Vision
### https://github.com/MicrosoftLearning/mslearn-ai-vision/blob/main/Instructions/Exercises/07-custom-vision-image-classification(legacy).md

