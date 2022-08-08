FROM ubuntu
#RUN apk add python py-pip
#RUN apk add python
#RUN pip install awscli
#RUN apk --purge -v del py-pip
RUN apt-get install -y nano
CMD tail -f /dev/null
