# Next.js and NGINX Docker Boilerplate

This repository provides a simple setup for building a static web app using Next.js and serving it via NGINX within a Docker container.

## Getting Started

1. **Clone the Repository**:
   ```
   git clone https://github.com/tomashobza/nextjs-docker-nginx-boilerplate.git
   cd nextjs-docker-nginx-boilerplate
   ```

2. **Update NGINX Configuration**:
   - Modify the `nginx.conf` file to suit your needs (e.g., adjust caching, proxy settings).

3. **Build and Run the Docker Container**:
   ```
   docker build -t my-next-app .
   docker run -p 8080:80 my-next-app
   ```

4. **Access Your App**:
   - Open a web browser and visit `http://localhost:8080`.

## Customization
Feel free to customize this boilerplate according to your project requirements. Happy coding! 🚀🐳
