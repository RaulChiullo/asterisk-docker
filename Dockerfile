FROM debian:11

#Comando para definir opções da imagem
SHELL ["/bin/bash", "-c"]
WORKDIR /etc/asterisk

#Comando para criação da imagem
RUN apt update
RUN apt upgrade -y
RUN apt install build-essential subversion libncurses5-dev libssl-dev libxml2-dev vim-nox -y
RUN apt install asterisk -y

#Comandos inicialização
#CMD asterisk
#CMD asterisk -r
CMD ["asterisk", "-fp", "&"]

#rede
EXPOSE 80/tcp
EXPOSE 5060/udp
EXPOSE 5061/tcp
EXPOSE 10000-10100/udp
