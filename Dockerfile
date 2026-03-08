#this is a  light weight image , i have used to pack it  , this is a imaged used from dockerhub
FROM nginx:alpine


#Setting a working directory inside container
WORKDIR /usr/share/nginx/html

#remove default nginx static files
RUN rm -rf ./*

#copying my webiste into the container
COPY index.html .

#Expose port 80  , so container can serve the webiste 
EXPOSE 80

# start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
