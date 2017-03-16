# docker-node-react-skeleton
A skeleton repository used for starting new React SPAs

## Getting started
This repository is designed to be minimal and to work in any environment with Docker Compose.

First, open the included Dockerfile and rename your app. Change this:

    CMD ["create-react-app", "skeleton"]

To This:

    CMD ["create-react-app", "your-app-name"]

Where "your-app-name" is the name of the directory for your React app.

Next, update the included docker-compose.yml to reflect your app name. Change this:

    command: bash -c "cd skeleton; npm start"
    volumes: [
      "./app:/app/skeleton"
    ]

To this:

    command: bash -c "cd your-app-name; npm start"
    volumes: [
      "./app:/app/your-app-name"
    ]

Then build the docker container image:

    [sudo] docker build .

When the image is built, grab the image ID and run a container for the first time:

    [sudo] docker run -v $(pwd)/app:/app/your-app-name <imageID>

Note that you may have to change the file paths if you're working in Windows. `$(pwd)` expands to the current workding directory, so you can simply swap it out with the absolute path to `./app`.

You will now have a container with a working node application, and the React starter code will be on your host in the repository's app directory.

Finally, start the application:

    [sudo] docker-compose up

Navigate to `localhost` in your browser and you should see the starter React application.

Note that if you used `sudo` to run the Docker commands, you will probably have to change the ownership of the generated code in /app
