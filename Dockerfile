FROM nginx:latest
EXPOSE 50011
WORKDIR /app
USER root

COPY entrypoint.sh ./

RUN apt-get update && apt-get install -y wget unzip iproute2 systemctl 

ENTRYPOINT [ "./install.sh" ]
