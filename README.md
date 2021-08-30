Steps to package the application using Docker commands:

``` 
# build the image
docker build -t basic-app-002 .

# run the image
docker run -d -p 6111:6111 basic-app-002

# tag the image
docker tag basic-app-002 emekamomodu/basic-app-002:v1.0.0

# push the image
docker push emekamomodu/basic-app-002:v1.0.0

# login into DockerHub
docker login
```

Deploy to Kubernetes:
```
# run the application
kubectl run test --image emekamomodu/basic-app-002:v1.0.0

# access the application on the local host
kubectl port-forward test-97856cf4-6fvjw 7111:6111
```
