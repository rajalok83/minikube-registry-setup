FROM alpine
# container working directory
WORKDIR /usr/src/app
# Copy all source code to the container
COPY . .
# Expose the port
#EXPOSE 3000
# start the application
#CMD [ "node", "app.js" ]
#CMD [ "sh", "helloworld.sh" ]
CMD ["echo", "Hello World"]
