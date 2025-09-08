# Step 1: Use lightweight nginx image
FROM nginx:alpine

# Step 2: Set working directory inside container
WORKDIR /usr/share/nginx/html

# Step 3: Remove default nginx files
RUN rm -rf ./*

# Step 4: Copy your app files (index.html, search.html, world.html, css/, js/, img/, etc.)
COPY . .

# Step 5: Expose port 80 for web traffic
EXPOSE 80

# Step 6: Start nginx server
CMD ["nginx", "-g", "daemon off;"]
