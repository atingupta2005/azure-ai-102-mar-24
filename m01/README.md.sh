cd ~
rm -rf ~/azure-ai-102-mar-24
git clone https://github.com/atingupta2005/azure-ai-102-mar-24
sudo chmod -R a+rw /pyenv
cd ~/azure-ai-102-mar-24/mslearn-ai-services/Labfiles/01-use-azure-ai-services/Python/rest-client/

pip install python-dotenv

sed -i 's/mykeyneedtoreplace/e53b50cc600e4a53ade0ba1c07250030/g' .env

python rest-client.py


cd ~/azure-ai-102-mar-24/mslearn-ai-services/Labfiles/01-use-azure-ai-services/Python/sdk-client
pip uninstall azure-ai-textanalytics
pip install azure-ai-textanalytics==5.3.0
sed -i 's/mykeyneedtoreplace/e53b50cc600e4a53ade0ba1c07250030/g' .env
python sdk-client.py
