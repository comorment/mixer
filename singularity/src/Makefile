all: mixer.sif

%.sif: dockerfiles/%/Dockerfile
	docker build -t $* -f dockerfiles/$*/Dockerfile . && \
	scripts/convert_docker_image_to_singularity.sh $* && \
	scripts/move_singularity_file.sh $*

# Example commands executed by this make file
# 
# Run "make mixer.sif" will trigger this:
# docker build -t mixer -f dockerfiles/mixer/Dockerfile . && \
# 	scripts/convert_docker_image_to_singularity.sh mixer && \         # produces mixer.sif
#   scripts/move_singularity_file.sh mixer							  # moves mixer.sif to the <mixer>/singularity directory
