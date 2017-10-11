[![Docker pulls](https://img.shields.io/docker/pulls/garyfeng/docker-opensmile.svg)](https://hub.docker.com/r/garyfeng/docker-opensmile/)
[![Docker Build](https://img.shields.io/docker/automated/garyfeng/docker-opensmile.svg)](https://hub.docker.com/r/garyfeng/docker-opensmilee/)
[![Latest Tag](https://img.shields.io/github/tag/garyfeng/docker-opensmile.svg)](https://hub.docker.com/r/garyfeng/docker-opensmile/)

# docker-openpose

Docker Image for [pyAudioAnalysis](https://github.com/tyiannak/pyAudioAnalysis). 

# Usage

- Put mp3 files in a local folder, say `mp3folder`
- start docker by mapping `mp3folder` to `/data`: 

```
docker run -v mp3folder:/data -w '/data' -i -t garyfeng:docker-pyaa
```

- when the instance starts, it will scan the mp3 files in the folder and write feature files. 
- close the instance
