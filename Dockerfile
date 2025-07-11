FROM python:3.9-slim

# set working directory in container
WORKDIR /app

# copies requirement text file to current directory in container. as this file is less likely to change, it is copied separately to make use of Docker's caching layers to improve performance.
COPY requirements.txt .

# installs the package(s) listed in the requirements text file
RUN pip install -r requirements.txt

# copies the rest of the files to the container
COPY . .

# command to start the python script
CMD ["python", "process_data.py"]