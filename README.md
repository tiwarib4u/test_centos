# Build Image
docker image build -t test5 .

# Run container
docker run -d -it -p 4000:80 --name=webserver test5
