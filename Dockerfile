# Use a lightweight web server (nginx) image
FROM nginx:alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files into the nginx web directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
