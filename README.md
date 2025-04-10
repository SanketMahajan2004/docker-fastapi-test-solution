# docker-fastapi-test-solution
This project demonstrates how to Dockerize a FastAPI application that performs basic operations like adding and retrieving users without using a traditional database. Instead, it uses a users.json file to store data.
The application is structured with separate files for the main API logic (main.py), data handling services (services.py), and data models (schema.py). All files are organized within an app directory, while the user data is stored in a data folder.
A Dockerfile is created to containerize the application, and a docker-compose.yml file is used to manage the container and mount a volume to persist the users.json file on the host system. This allows the application to retain user data even after the container is destroyed and recreated.
