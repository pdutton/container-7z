ARG VERSION=servercore
ARG TAG=ltsc2022

FROM mcr.microsoft.com/windows/${VERSION}:${TAG}

ADD https://www.7-zip.org/a/7z2201-x64.msi C:/

RUN msiexec /package C:\7z2201-x64.msi /quiet /qn /norestart
RUN setx /M PATH "%PATH%;C:\Program Files\7-Zip"


