# Use an official base image (e.g., nginx, apache, or node)
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy your application files into the container
COPY index.html .
COPY styles.css .
COPY app.js .

# Expose the port on which your application runs
EXPOSE 80

# Specify the command to run your application (e.g., start nginx)
CMD ["nginx", "-g", "daemon off;"]