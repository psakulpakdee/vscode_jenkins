FROM jenkins/jenkins

USER root
RUN apt-get update \
&& apt-get install -y apt-transport-https \
&& wget -nv -O - https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg \
&& mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/ \
&& wget -nv https://packages.microsoft.com/config/debian/9/prod.list \
&& mv prod.list /etc/apt/sources.list.d/microsoft-prod.list \
&& apt-get update \
&& apt-get install -y dotnet-sdk-5.0 \
&& dotnet --version

USER jenkins
