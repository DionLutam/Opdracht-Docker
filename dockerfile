FROM nginx:latest
RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean
WORKDIR /usr/share/nginx/html
RUN git clone https://github.com/jouwgebruikersnaam/jouwrepository.git
RUN rm -rf /usr/share/nginx/html/*
RUN cp -R /usr/share/nginx/html/jouwrepository/* /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
