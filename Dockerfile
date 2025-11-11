FROM node:18-alpine
WORKDIR /app
COPY package*.json ./ 
RUN npm install
COPY . .
EXPOSE 5555
CMD ["npm", "start"]
LABEL maintainer="Melisa Ates"
ENV APP_NAME="Node js, Dockerfile Tutorial"
ENV APP_VERSION="1.0.0"
ENV PORT=5555
RUN echo "App name : $APP_NAME"
RUN echo "PORT : $PORT"
RUN echo "App version : $APP_VERSION"
# Healthcheck to monitor the container's health
# interval means how often to run the check
# timeout means how long to wait for the check to complete
# start-period means how long to wait before starting checks
# retries means how many consecutive failures are allowed before marking the container as unhealthy
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
 CMD curl -f http://localhost:5555/ || exit 1

