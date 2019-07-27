docker build -t keras_resnet .
docker run -it -v ${PWD}/data:/usr/src/data -t keras_resnet
