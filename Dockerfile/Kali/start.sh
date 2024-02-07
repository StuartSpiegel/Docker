#!/bin/bash
docker build -t kali-aircrack .

docker run --privileged -it kali-aircrack