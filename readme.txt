#############################################################
# Create a file from command
        touch Dockerfile
    or [create and open a file with the specified editor]
        start notepad++ Dockerfile  => Notepade++
        notepad Dockerfile          => Notepad
        code Dockerfile             => VSCode
# Create a directory
    mkdir [dir_name]
#############################################################

########################### DOCKER ##########################
# [IMAGE] List all  images
    docker images

# [IMAGE] Delete an image
    Stop the running container of this image if any
    docker rmi [-f] [image_id/Repository_Name]
        => [f]: force

# [IMAGE] Delete all images
    Stop all running containers
    docker rm $(docker ps -qa)

# [IMAGE] Create an image
    docker run [image]
    or
    docker create -p 9000:80 nginx
        => create an image (nginx) with the export mapped port 9000

# [CONTAINER] List the running containers
    docker ps

# [CONTAINER] List all containers
    docker ps -a

# [CONTAINER] Stop the running container
    docker stop [contrinar_id]

# [CONTAINER] Stop all the running containers
    docker stop $(docker ps -qa)

# [CONTAINER] Start container
    docker start [container_id]

# [CONTAINER] Build container from Dockerfile file
    docker build -t [phich82/php] .

# [CONTAINER] Build container with version (tagged) from Dockerfile file
    docker build -t [phich82/php:v1] .

# [CONTAINER] Run container
    [winpty] docker run -ti phich82/php => [winpty]: used in case Hyper-V
########################### DOCKER ##########################