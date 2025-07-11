# Containerising a Python Script
This shows the process of containerising a script, package requirements, and data with a base python image.

The Dockerfile copies all the files in the directory into the container and installs the necessary packages. Then runs the following command to run the script.
```
python <script_name.py>
```

## Steps to run:
Build the dockerfile into a docker image.
```
docker build -t <image_name> .
```
Start a container with the docker image in detached (-d) mode and mapping a host port to a container port.
```
docker run <image_name>
```
When running the container, the output shows the processed data.
___