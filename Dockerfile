FROM nginx:latest
EXPOSE 50011
EXPOSE 443
EXPOSE 80
WORKDIR /app
USER root

COPY install.sh ./

RUN apt-get update && apt-get install -y wget unzip iproute2 systemctl curl 

ENTRYPOINT [ "./install.sh" ]
