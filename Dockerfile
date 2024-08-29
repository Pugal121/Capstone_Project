#pulling base img from hub
FROM nginx:latest

#Copies all files from build
COPY build/ /usr/share/nginx/html

#Expose to port 80(http default port)
EXPOSE 80

#start nginx running in foreground
CMD ["nginx", "-g", "daemon off;"]
