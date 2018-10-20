FROM clojure:lein-2.8.1-alpine
MAINTAINER David Goeke <dockerhub@waygate.org>

ENV TERRAFORM_VERSION=0.11.9

RUN apk add curl py-pip
RUN pip install --upgrade pip
RUN pip install awscli

RUN curl -LO https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
RUN unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && mv ./terraform /bin
