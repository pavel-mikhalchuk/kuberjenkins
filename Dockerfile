FROM jenkins/jenkins:lts

COPY src/* /usr/shared/jenkins/ref/

ENTRYPOINT ["/bin/tini", "--", "/usr/local/bin/jenkins.sh"] 
