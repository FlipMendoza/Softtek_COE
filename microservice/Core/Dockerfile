FROM centos

RUN yum -y update && yum -y install git \
    zip \
    unzip \
    java-devel \
    wget \
    which \
    docker

WORKDIR /tmp
RUN wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum -y install epel-release-latest-7.noarch.rpm
RUN yum -y install python-pip
RUN pip install docker-compose

WORKDIR /root
RUN curl -s "https://get.sdkman.io" | bash
RUN source "/root/.sdkman/bin/sdkman-init.sh" && \
    sdk install gradle

ENV PATH $PATH:/root/.sdkman/candidates/gradle/current/bin

WORKDIR /root/project
RUN git clone https://github.com/FlipMendoza/Softtek_COE.git

WORKDIR /root/project/Softtek_COE/microservice/Employee
RUN gradle build

WORKDIR /root/project/Softtek_COE/microservice/Mission
RUN gradle build

WORKDIR /root/project/Softtek_COE/microservice/Reward
RUN gradle build

WORKDIR ../

CMD docker-compose up -d ; docker-compose logs -f