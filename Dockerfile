FROM ubuntu:latest

RUN apt update && apt upgrade -y && apt install -y && apt install git -y && apt autoremove -y

RUN git clone https://github.com/totorg7/Entorno.git

WORKDIR /home/toto/tp-entorno

ADD archivo-palabras.txt /home/toto/tp-entorno/archivo-palabras.txt
ADD listamayus.sh /home/toto/tp-entorno/listamayus.sh
ADD mails.sh /home/toto/tp-entorno/mails.sh
ADD menu.sh /home/toto/tp-entorno/menu.sh
ADD numeros.sh /home/toto/tp-entorno/numeros.sh
ADD palabrasvocal.sh /home/toto/tp-entorno/palabrasvocal.sh

CMD ["bash", "/home/toto/tp-entorno/menu.sh"]
