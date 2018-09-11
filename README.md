

# Setup Emacs to run in a docker container #


https://hub.docker.com/r/jare/emacs/

for now need to `xhost +`


GNU/Linux

UID and preferably UNAME should match the host's user id.
Also make sure that $DISPLAY variable is set

docker run -ti --name emacs -v /tmp/.X11-unix:/tmp/.X11-unix:ro\
 -e DISPLAY="unix$DISPLAY"\
 -e UNAME="emacser"\
 -e GNAME="emacsers"\
 -e UID="1000"\
 -e GID="1000"\
 -v <path_to_your_.emacs.d>:/home/emacs/.emacs.d\
 -v <path_to_your_workspace>:/mnt/workspace\
 jare/emacs emacs


docker run -it --name skc-emacs -v /tmp/.X11-unix:/tmp/.X11-unix:ro\
  -e DISPLAY="unix$DISPLAY"\
  zx
