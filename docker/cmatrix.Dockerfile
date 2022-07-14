FROM ubuntu

## for apt to be noninteractive
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN apt update && \
    apt install -y cmatrix

CMD ["cmatrix"] 

