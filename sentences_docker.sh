
#!/bin/bash

# Build the Docker image with the name 'my_docker_image'
docker build -t dk_shiny_full_01_img .

# Run the Docker container with the name 'my_docker_container'
docker run --name dk_shiny_full_01_container -p 3838:3838 --rm -d dk_shiny_full_01_img 

# Run the Docker container with the name 'my_docker_container' and mount the local directory 'example-app' to the container directory '/app'
docker run --name dk_shiny_full_01_container -v $(pwd)/app:/app -p 3838:3838 --rm -d dk_shiny_full_01_img


# Run exec command to access the container
docker exec -it my_docker_container /bin/bash

########################################################################################
# Stop the Docker container
docker stop dk_shiny_full_01_container

# Remove the Docker container
docker rm dk_shiny_full_01_container

# Remove the Docker image
docker rmi dk_shiny_full_01_img   

