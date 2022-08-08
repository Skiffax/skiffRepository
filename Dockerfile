FROM alpine
RUN apt install --no-cache curl wget busybox-extras netcat-openbsd python py-pip
RUN pip install awscli
RUN apt --purge -v del py-pip
CMD tail -f /dev/null
