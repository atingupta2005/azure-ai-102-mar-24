sudo chmod -R a+rw /pyenv
cd ~/ai-102/mslearn-ai-services/Labfiles/01-use-azure-ai-services/Python/rest-client/

pip install python-dotenv

sed -i 's/mykeyneedtoreplace/e53b50cc600e4a53ade0ba1c07250030/g' .env

python rest-client.py


cd ~/ai-102/mslearn-ai-services/Labfiles/01-use-azure-ai-services/Python/sdk-client
pip uninstall azure-ai-textanalytics
pip install azure-ai-textanalytics==5.3.0
sed -i 's/mykeyneedtoreplace/e53b50cc600e4a53ade0ba1c07250030/g' .env
python sdk-client.py
