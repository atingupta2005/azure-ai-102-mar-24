# mslearn-ai-language
## https://github.com/atingupta2005/mslearn-ai-language
cd ~
rm -rf ~/azure-ai-102-mar-24
git clone https://github.com/atingupta2005/azure-ai-102-mar-24

cd ~
rm -rf ~/ai-102/mslearn-ai-language
mkdir -p ~/ai-102
cd ~/ai-102
git clone https://github.com/atingupta2005/mslearn-ai-language
ls -al

sudo chmod -R a+rw /pyenv
p
source /pyenv/bin/activate
az login -u u1@atingupta.xyz -p changeme
az account show

## Lab: Analyze Text
###- https://github.com/atingupta2005/mslearn-ai-language/blob/main/Instructions/Exercises/01-analyze-text.md

cd ~/ai-102/mslearn-ai-language/Labfiles/01*/Python/text-analysis
pip install azure-ai-textanalytics==5.3.0
pip install python-dotenv
cat text-analysis.py | grep getenv
cat ~/.env | grep AI_SERVICE
python text-analysis.py
####-----------------------------------------------------

## Lab: Create a Question Answering Solution
###- https://github.com/atingupta2005/mslearn-ai-language/blob/main/Instructions/Exercises/02-qna.md

cd ~/ai-102/mslearn-ai-language/Labfiles/02*/Python/qna-app
cat qna-app.py | grep getenv
cat ~/.env | grep QA_
pip install azure-ai-language-questionanswering
python qna-app.py   # - Pending: Error: Message: The Query Knowledgebases Operation under QuestionAnswering API 2021-10-01 is not supported with the current subscription key and pricing tier CognitiveServices.S0
####-----------------------------------------------------

## Lab: Create a language understanding model with the Language service
###- https://github.com/atingupta2005/mslearn-ai-language/blob/main/Instructions/Exercises/03-language-understanding.md

cd ~/ai-102/mslearn-ai-language/Labfiles/03*/Python/clock-client
cat clock-client.py | grep getenv
cat ~/.env | grep LS_
pip install azure-ai-language-conversations
python clock-client.py      # Pending - Not working. (404) Resource not found

####-----------------------------------------------------

## Demo: Custom text classification
###- https://github.com/atingupta2005/mslearn-ai-language/blob/main/Instructions/Exercises/04-text-classification.md
# - Pending - Not Working: Some error ar Portal itself - "Some error has occured. Please refresh the page"
cd ~/ai-102/mslearn-ai-language/Labfiles/04*/Python/classify-text
pip install azure-ai-textanalytics==5.3.0
python classify-text.py


####-----------------------------------------------------

## Extra: Extract custom entities
###- https://github.com/atingupta2005/mslearn-ai-language/blob/main/Instructions/Exercises/05-extract-custom-entities.md
# - Pending - Not Working: Some error ar Portal itself - "Some error has occured. Please refresh the page"

cd ~/ai-102/mslearn-ai-language/Labfiles/05*/Python/

####-----------------------------------------------------

## Extra: Translate Text
###- https://github.com/atingupta2005/mslearn-ai-language/blob/main/Instructions/Exercises/06-translate-text.md

cd ~/ai-102/mslearn-ai-language/Labfiles/06b*/Python/translate-text
pip install azure-ai-translation-text==1.0.0b1
cat translate.py | grep getenv
cat ~/.env | grep TRANSLATOR
python translate.py

####-----------------------------------------------------

## Extra: Recognize and synthesize speech
###- https://github.com/atingupta2005/mslearn-ai-language/blob/main/Instructions/Exercises/07-speech.md
cd ~/ai-102/mslearn-ai-language/Labfiles/07*/Python/speaking-clock
sudo apt install pkg-config libcairo2-dev gcc python3-dev libgirepository1.0-dev
pip install PyGObject
pip install vext
pip install vext.gi
sudo apt-get install gstreamer-1.0
sudo apt install python3-gst-1.0
pip install azure-cognitiveservices-speech==1.30.0
pip install playsound==1.2.2
cat speaking-clock-file-1.py | grep getenv
cat ~/.env | grep SPEECH
ls
python speaking-clock-mic-1.py  # Pending - Need MIC
python speaking-clock-mic-2.py  # Pending - Need MIC
python speaking-clock-file-1.py

####-----------------------------------------------------

## Extra: Translate Speech
###- https://github.com/atingupta2005/mslearn-ai-language/blob/main/Instructions/Exercises/08-translate-speech.md

cd ~/ai-102/mslearn-ai-language/Labfiles/08*/Python/translator
pip install azure-cognitiveservices-speech==1.30.0
pip install playsound==1.3.0
cat translator.py | grep getenv
cat ~/.env | grep SPEECH
python translator-mic.py
python translator-file.py

####-----------------------------------------------------
