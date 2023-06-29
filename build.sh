VERSION=debian.mpich
DOCKERIMG=nerv/cressmars
SINGULARITYIMG=cressmars.debian.mpich
docker save $DOCKERIMG:$VERSION -o $SINGULARITYIMG.tar
singularity build $SINGULARITYIMG docker-archive://$SINGULARITYIMG.tar
rm $SINGULARITYIMG.tar
