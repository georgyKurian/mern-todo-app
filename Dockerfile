# download a base version of node from Docker Hub
FROM node:10

# create the working directory for the application called /app that will be the root
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
# RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 3000

# Define environment variable
ENV NAME development

# npm install the dependencies and run the start script from each package.json
CMD cd web && npm install && npm run start
CMD cd api && npm install && npm run start