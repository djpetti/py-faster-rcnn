#!/bin/bash

# Run the Docker container.
sudo nvidia-docker run -ti --rm -v `pwd`:/py-faster-rcnn \
    djpetti/py-faster-rcnn /bin/bash
