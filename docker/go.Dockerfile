FROM jenkins/jenkins

USER root
RUN wget https://golang.org/dl/go1.16.linux-amd64.tar.gz -nv -O go.tar.gz \
&& tar xfz go.tar.gz \
&& rm go.tar.gz \
&& mv go /usr/local \
&& ln -s /usr/local/go/bin/go /usr/local/bin/go

USER jenkins
