all: mixer.sif

%.sif: dockerfiles/%/Dockerfile
	docker build -t $* -f dockerfiles/$*/Dockerfile . && scripts/convert_docker_image_to_singularity.sh $*

# Example commands executed by this make file
# 
# Run "make hello.sif" will trigger this:
# docker build -t hello -f dockerfiles/hello/Dockerfile . && scripts/convert_docker_image_to_singularity.sh hello          # produces hello.sif
#  
