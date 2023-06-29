.PHONY: fedora.mpich ubuntu.mpich debian.mpich clearlinux.mpich mpich

mpich: fedora.mpich ubuntu.mpich debian.mpich clearlinux.mpich

fedora.mpich:
	cd fedora.mpich && \
	docker build -t nerv/cressmars:fedora.mpich .

ubuntu.mpich:
	cd ubuntu.mpich && \
	docker build -t nerv/cressmars:ubuntu.mpich .

debian.mpich:
	cd debian.mpich && \
	docker build -t nerv/cressmars:debian.mpich .

clearlinux.mpich:
	cd clearlinux.mpich && \
	docker build -t nerv/cressmars:clearlinux.mpich .
