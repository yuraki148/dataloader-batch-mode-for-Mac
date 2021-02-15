# About
This is dataloader in Batch mode for Mac. 

# Platform
* Docker

# How to use
## Build Docker machine for Windows
* https://blog.cloud.kompira.jp/entry/2018/11/12/103225
## Build
```
git clone git@github.com:yuraki148/dataloader-batch-mode-for-Mac.git
cd dataloader-batch-mode-for-Mac
docker build -t {imageName:tag} .
```

## Running
```
docker run -it imageName:tag
```
## Dettach
control + p、q

## Enter container
```
docker exec -it {containerName} cmd
```
## Install Dataloader
```
cd install
install.bat
```
## Set dataloader in Batch mode
https://help.salesforce.com/articleView?id=000331524&type=1&mode=1

