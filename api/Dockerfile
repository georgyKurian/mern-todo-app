# download a base version of node from Docker Hub
FROM node:10

# create the working directory for the application called /app that will be the root
WORKDIR /api

# Copy the current directory package.json into the container at /clent
COPY ./ /api/

# Install any needed packages specified in requirements.txt
# RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define environment variable
ENV NAME development

# npm install the dependencies and run the start script from each package.json
CMD npm install && npm run start