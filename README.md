[![Docker pulls](https://img.shields.io/docker/pulls/garyfeng/docker-pyaa.svg)](https://hub.docker.com/r/garyfeng/docker-pyaa/)
[![Docker Build](https://img.shields.io/docker/automated/garyfeng/docker-pyaa.svg)](https://hub.docker.com/r/garyfeng/docker-pyaa/)
[![Latest Tag](https://img.shields.io/github/tag/garyfeng/docker-pyaa.svg)](https://hub.docker.com/r/garyfeng/docker-pyaa/)

# docker-openpose

Docker Image for [pyAudioAnalysis](https://github.com/tyiannak/pyAudioAnalysis). 

# Usage

This docker image adds a script (`/autorun.sh`) that demonstrates how to process all mp3 files in a folder to extract features with given parameters. You will need to start your docker image by mapping a folder with mp3 files to `/data` folder in the docker image.  When the docker image runs, it run `bash`. You can run `/autorun.sh` to process the mp3 files 

- Put mp3 files in a local folder, say `mp3folder`
- start docker by mapping `mp3folder` to `/data`: 

```
docker run -v mp3folder:/data -w '/data' -i -t garyfeng:docker-pyaa
```

- when the instance starts, it runs `bash` to wait for your input.
- [optional]: in `bash`, run `/autorun.sh`. It will scan the mp3 files in the folder and write feature files. 
- close the instance by typing `exit`
