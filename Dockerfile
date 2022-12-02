FROM ubuntu:18.04
RUN apt update
RUN apt install openssh-server -y 

EXPOSE 22

ENTRYPOINT ["bash"]
CMD ["echo", "hello"]