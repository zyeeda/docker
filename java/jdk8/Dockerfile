FROM debian:jessie

RUN apt-get update && \
    apt-get install -yq \
        ca-certificates \
        curl \
        wget && \
    apt-get autoremove -yq && \
    apt-get clean -yq && \
    rm -rf /var/lib/apt/lists/*

# install git
RUN \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E1DF1F24 && \
    echo "deb http://ppa.launchpad.net/git-core/ppa/ubuntu trusty main" | tee /etc/apt/sources.list.d/git.list && \
    echo "deb-src http://ppa.launchpad.net/git-core/ppa/ubuntu trusty main" | tee /etc/apt/sources.list.d/git.list && \
    apt-get update && \
    apt-get install -yq git && \
    apt-get autoremove -yq && \
    apt-get clean -yq && \
    rm -rf /var/lib/apt/lists/*

# install mercurial
RUN \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 323293EE && \
    echo "deb http://ppa.launchpad.net/mercurial-ppa/releases/ubuntu  trusty main" | tee /etc/apt/sources.list.d/mercurial.list && \
    echo "deb-src http://ppa.launchpad.net/mercurial-ppa/releases/ubuntu  trusty main" | tee /etc/apt/sources.list.d/mercurial.list && \
    apt-get update && \
    apt-get install -yq mercurial && \
    apt-get autoremove -yq && \
    apt-get clean -yq && \
    rm -rf /var/lib/apt/lists/*

# install jdk8
RUN \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886 && \
    echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list && \
    echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list && \
    apt-get update && \
    apt-get install -yq oracle-java8-installer oracle-java8-set-default && \
    apt-get autoremove -yq && \
    apt-get clean -yq && \
    rm -rf /var/lib/apt/lists/*

# install maven
ENV MAVEN_VERSION 3.3.9
RUN \
    curl -sSL http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share && \
    mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven && \
    ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
ENV MAVEN_HOME /usr/share/maven

CMD ["mvn", "--version"]

