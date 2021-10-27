FROM alpine:latest

RUN apk add --update --no-cache \
    docker \
    git \
    jq \
    py-pip \
    python3

RUN pip install awscliv2
RUN ln -s /usr/bin/awsv2 /usr/bin/aws

# docker build . -t kirbownz/awscli2-jq-docker-git:latest
# docker run --rm -it kirbownz/awscli2-jq-docker-git:latest aws --version
# docker push kirbownz/awscli2-jq-docker-git:latest
