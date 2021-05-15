FROM ubuntu:18.04
WORKDIR /usr/src/app
COPY script.sh .
# chmod is the linux command to change permisions
# chmod +x adds execution permissions (makes the file executable)
RUN chmod +x ./script.sh
RUN apt-get update && apt-get install -y curl
CMD ./script.sh