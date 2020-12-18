###Create Docker images:

File name: Dockerfile


INSTRUCTION		ARGUMENT
-----------		------------
FROM Ubuntu                     [ Layer 1. OS - Ubuntu ]

RUN apt-get update              [Layer 2. Update apt repo]
RUN apt-get install python      [Layer 3. install dependencies using apt]

RUN pip install flask           [Layer 4. Install Python dependencies using pip]
RUN pip install flask-mysql   

COPY . /opt/source-code         [Layer 5. Copy source code from current directory   to /opt directory]

ENTRYPOINT FLASK_APP=/opt/source-code/app.py flash run    [6. Run the web server using 'flask' command]


###Build Docker image:

docker build Dockerfile -t /home/akash/my-custom-app
docker build -t webapp-color . [ build a docker image name webapp-color ]


###PUSH Docker image

docker push /home/akash/my-custom-app
