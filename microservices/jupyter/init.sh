#!/bin/bash

/usr/local/bin/start.sh 'sudo chown 1000 /home/jovyan/work' \
&& start.sh jupyter notebook --NotebookApp.token=''
