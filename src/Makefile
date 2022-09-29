all: mixer.sif

%.sif: containers/%/Dockerfile
	docker build -t $* -f containers/$*/Dockerfile . && scripts/convert_docker_image_to_singularity.sh $*

# Example commands executed by this make file
# 
# Run "make hello.sif" will trigger this:
# docker build -t hello -f containers/hello/Dockerfile . && scripts/convert_docker_image_to_singularity.sh hello          # produces hello.sif
#  
