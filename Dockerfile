# Dockerfile for pyAudioAnalysis

FROM ubuntu:16.04
MAINTAINER Gary Feng <gary.feng@gmail.com>

# install basic packages
RUN apt-get update && \
	apt-get install -y \
	automake \
	bash\
	build-essential \
	checkinstall \
	cmake \
	git \
	libtool \
	pkg-config \
	python-dev \
	python-numpy \
	python-pip\
	python-tk\
	sshfs \
	unzip \
	v4l-utils \
	wget \
	x264 \
	yasm

# install all the relevant libs
RUN apt-get install -y \
	libav-tools

# pip installs
RUN pip install --upgrade pip
RUN yes | pip install numpy matplotlib scipy sklearn hmmlearn simplejson eyed3 pydub

# install pyAA
RUN git clone https://github.com/tyiannak/pyAudioAnalysis.git

# to launch the docker:
# remember to map a folder with MP3 files as the /data file. 
# this also sets the working directory to /data. 
# docker run -v C:\Users\garyfeng\Desktop\docker-pyaa:/data -w '/data' -i -t docker-pyaa

# set the startup script to scan the data file for *.mp3 files and process them.
ENTRYPOINT ["for f in *.mp3; do python /pyAudioAnalysis/audioAnalysis.py featureExtractionFile -i /data/$f -mw 1.0 -ms 1.0 -sw 0.050 -ss 0.050 -o /data/$f; done"]

#CMD [bash]
