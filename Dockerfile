FROM alpine
#use alpine linux instead of ubuntu for the base image
#alpine is more lightweight so things like updating the available package list will require much less time and downloads

LABEL maintainer="Adam Rebes <https://github.com/Adzzzy>"

#temporarily become root to do elevated actions such as installs without requiring sudo
USER root

#Copy files needed inside the image from the host machine to the image's filesystem.
#In this case, since it's the only file in the project, just copy the c++ file itself directly into the image filesystem's pwd. (Here it will be into root "/" which is the image's default working directory if not set with WORKDIR)
COPY ./Wordle.cpp /
#Could instead copy the contents of the host machine's present working directory into the image's pwd with COPY . . but this can result in unnecessary files being included (such as the dockerfile itself, .git folder, readme, etc.) and a larger overall image size

#refresh available packages then install g++ to use for c++ code compilation (--no-cache to keep the image size smaller)
RUN apk update && apk add --no-cache g++
#alpine uses apk as its package manager instead of apt-get used in debian (Also -y not needed to automatically says yes to prompts, because alpine doesn't prompt by default)

#Compile Wordle.cpp
RUN g++ Wordle.cpp -o Wordle.o

#Set user back to nobody so that the container doesn't have unnecessary permissions when running code
USER nobody

#The entrypoint for the docker container will be the Wordle.o executable.
#Could also use CMD [] instead to enter a command to start off the container with (in this case still "/Wordle.o") as the default ENTRYPOINT is a bash shell that gets commands from CMD in the Dockerfile or docker build args in the CLI
ENTRYPOINT ["/Wordle.o"]