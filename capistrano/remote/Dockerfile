FROM ruby:3.2-alpine
RUN apk update && \
    apk add --no-cache openssh-server && \
    apk add --no-cache openssh-client && \
    apk add --no-cache git && \
    apk add --no-cache bash
RUN mkdir /var/run/sshd
RUN echo 'root:password' | chpasswd
RUN ssh-keygen -A
RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D", "-e"]
