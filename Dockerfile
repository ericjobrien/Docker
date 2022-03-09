#This DOCKERFILE will build an Image
#An image is itself just a blueprint for a Container
#A container is a lightweight virtualized environment
#That reuses its computer's OS kernel

#The image that we start our dockerfile FROM
#Because this image is not on our local repository, it will be pulled
#from the docker repository automatically
FROM openjdk:17-jdk-alpine
COPY target/dockerexample-0.0.1-SNAPSHOT.jar docker.jar
CMD ["java", "-jar", "/docker.jar"]
EXPOSE 9000

#On a pipeline:
#you could build an image on the pipeline using
#the *exact same commands* as windows
#It is universal
#and run the container from docker as such
#you could also use this to kill previous containers,
#as well as modify ports, env variables, etc