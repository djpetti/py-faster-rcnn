#!/bin/bash

uid=`id -u`
gid=`id -g`

# Run the Docker container.
sudo nvidia-docker run -ti --rm -v `pwd`:/py-faster-rcnn \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    djpetti/py-faster-rcnn \
    /setup_gui_env.sh ${uid} ${gid} && /bin/bash
