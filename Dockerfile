FROM ubuntu

RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx -y

COPY /website/index.html /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx","-g","daemon off;"]

