#!/bin/bash

scp ./algolympics.tar.gz event1@$1:~/Desktop
ssh -t event1@$1 'cd ~/Desktop && mkdir algolympics && tar -zxf algolympics.tar.gz -C algolympics/ && cd algolympics && bash'
