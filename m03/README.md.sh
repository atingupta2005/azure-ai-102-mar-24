# mslearn-ai-vision
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
source /pyenv/bin/activate
az login -u u1@atingupta.xyz -p changeme
az account show


sudo chmod -R a+rw /pyenv
cd ~/ai-102/mslearn-ai-vision/Labfiles/01-use-azure-ai-services/Python/rest-client/

pip install python-dotenv
