#Our Docker Base Image
FROM python:3.9-slim

#Working Directory in container
WORKDIR /app

#Copy current directory content to container directory /app
COPY . .

# Expose port 8080 to the outside world
EXPOSE 8080

# Install trivy and scan before build
FROM python:3.9-slim  AS vulnscan
COPY --from=aquasec/trivy:latest /usr/local/bin/trivy /usr/local/bin/trivy
RUN trivy filesystem --severity CRITICAL --exit-code 1 --no-progress /

#Run app in container
CMD ["python3", "app.py"]