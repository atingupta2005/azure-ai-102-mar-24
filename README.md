# AI-102
## Lab Instructions
https://github.com/MicrosoftLearning/mslearn-ai-services

https://github.com/MicrosoftLearning/mslearn-ai-vision

https://github.com/MicrosoftLearning/mslearn-ai-language

https://github.com/MicrosoftLearning/mslearn-ai-document-intelligence

https://github.com/MicrosoftLearning/mslearn-knowledge-mining/

https://github.com/MicrosoftLearning/mslearn-openai


For Students:
https://learn.microsoft.com/en-us/credentials/certifications/azure-ai-engineer/?practice-assessment-type=certification
https://learn.microsoft.com/en-us/training/courses/ai-102t00


MS Learn Excersices:
https://microsoftlearning.github.io/mslearn-ai-services/



## ag-ai-services-multi | Keys and Endpoint
- e53b50cc600e4a53ade0ba1c07250030
- https://ag-ai-services-multi.cognitiveservices.azure.com/
- East US


## Create Key Vault
https://kv-ai-practice.vault.azure.net/
https://kv-ai-practice.vault.azure.net/secrets/AI-Services-Key/

## Create SP
```
#az login
az ad sp create-for-rbac -n "api://ag-ai-services" --role owner --scopes subscriptions/6896d70c-606d-4394-a6dc-f6fb42a97dfc/resourceGroups/rg-ai-practice
```