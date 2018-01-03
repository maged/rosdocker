docker rm rostut_build
docker run -it \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --name "rostut_build" \
    rosdocker &

xhost +local:`docker inspect --format='{{ .Config.Hostname }}' rostut_build`

docker exec -it rostut_build bash
