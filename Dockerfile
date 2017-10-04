FROM jenkins/jenkins:lts

COPY src/ /usr/share/jenkins/ref/

ENTRYPOINT ["/bin/tini", "--", "/usr/local/bin/jenkins.sh"] 
