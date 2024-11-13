FROM nginx:latest
RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean
WORKDIR /usr/share/nginx/html
RUN git clone https://github.com/DionLutam/Opdracht-Docker.git
RUN rm -rf /usr/share/nginx/html/*
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
