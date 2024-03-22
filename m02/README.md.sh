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

source /pyenv/bin/activate
az login -u u1@atingupta.xyz -p changeme
az account show

cd ~/ai-102/mslearn-ai-vision/Labfiles/01*/Python/image-analysis
sed -i 's/mykeyneedtoreplace/replacekey/g' .env
az cognitiveservices account keys list --name ag-ai-services-multi --resource-group rg-ai-practice

pip install python-dotenv
pip install azure-ai-vision-imageanalysis==1.0.0b1

python image-analysis.py images/street.jpg
python image-analysis.py images/building.jpg
python image-analysis.py images/person.jpg

sed -i 's/backgroundRemoval/foregroundMatting/g' image-analysis.py

python image-analysis.py images/street.jpg
python image-analysis.py images/building.jpg
python image-analysis.py images/person.jpg