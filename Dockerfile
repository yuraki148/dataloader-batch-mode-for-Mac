FROM microsoft/aspnet:4.6.2

# ZULU for 64bit
ADD https://cdn.azul.com/zulu/bin/zulu11.45.27-ca-jdk11.0.10-win_x64.msi /install/zulu11.45.27-ca-jdk11.0.10-win_x64.msi

# Dataloader
ADD https://tambourine-dev-ed.my.salesforce.com/dwnld/DataLoader/dataloader_win.zip /install/dataloader_win.zip

# msiファイル解凍
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]
RUN Start-Process 'C:\\install\\zulu11.45.27-ca-jdk11.0.10-win_x64.msi' '/qn' -PassThru | Wait-Process;

# Dataloader Zipファイル解凍
RUN powershell
RUN Expand-Archive -Path C:\install\dataloader_win.zip -DestinationPath C:\install\dataloader_win
RUN exit

# 変数設定
ENV JAVA_HOME="C:\Program Files\Zulu\zulu-11"

RUN mkdir csv-data
RUN mkdir setting-process

