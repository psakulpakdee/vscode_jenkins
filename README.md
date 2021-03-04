# jenkins

### Document
- Jenkin Pipeline https://www.jenkins.io/doc/book/pipeline
- Groovy Langurage http://groovy-lang.org
- Jenkins core API https://javadoc.jenkins-ci.org

### Docker Image
- Jenkins https://hub.docker.com/r/jenkins/jenkins
- Socat https://hub.docker.com/r/alpine/socat
- https://hub.docker.com/r/codebangkok/jkgo
- https://hub.docker.com/r/codebangkok/jkdocker
- https://hub.docker.com/r/codebangkok/jkdotnet

### VSCode Extension
- Jenkins Runner
- Jenkinsfile Support
- code-groovy

### Download
- Plugins https://drive.google.com/file/d/1s7NrNPEiIvDRFkQOwoxlBnHithqJnDmJ/view?usp=sharing

### Docker Compose: socat

```
  socat: 
    container_name: socat 
    image: alpine/socat 
    ports: 
      - 2375:2375 
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
    command: tcp-listen:2375,fork,reuseaddr unix-connect:/var/run/docker.sock
```
