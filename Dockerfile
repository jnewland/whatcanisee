FROM jnewland/git-and-stuff

RUN apt-get update
RUN apt-get -y install \
      iproute \
      nmap

WORKDIR /root
ADD https://github.com/jessfraz/amicontained/releases/download/v0.0.9/amicontained-linux-amd64 ./amicontained
RUN chmod a+x ./amicontained

# Run this both in the build and run contexts
ADD run.sh ./
RUN /bin/bash run.sh "docker build"

ENTRYPOINT ["/bin/bash", "run.sh"]
