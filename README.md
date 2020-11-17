# Build Image
docker image build -t test5 .

# Run container
docker container run -d -it -p 4000:80 --name=webserver test5

# Check the container
docker container ls

# Exec
docker exec -it webserver bash
