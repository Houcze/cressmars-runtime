FROM clearlinux

RUN swupd bundle-add c-basic which wget devpkg-curl devpkg-libxml2 ruby-basic sysadmin-basic devpkg-zlib

WORKDIR /src

RUN wget https://download.open-mpi.org/release/open-mpi/v4.1/openmpi-4.1.5.tar.gz && \
  tar xvf openmpi-4.1.5.tar.gz && cd openmpi-4.1.5 && \
  ./configure --prefix=/usr && \
  make -j36 && make install && cd ..

ENV CC=mpicc
ENV CXX=mpicxx
ENV FC=mpifort

RUN wget https://github.com/HDFGroup/hdf5/archive/refs/tags/hdf5-1_14_1-2.tar.gz && \
  tar xvf hdf5-1_14_1-2.tar.gz && cd hdf5-hdf5-1_14_1-2 && \
  ./configure --prefix=/usr --enable-unsupported=yes --enable-fortran=yes --enable-fortran2003=yes --enable-hl=yes --enable-hltools=yes --enable-tools=yes --enable-shared=yes --enable-static=yes --enable-fast-install=yes --enable-parallel=yes --enable-build-all=yes && \
  make -j36 && make install && cd ..

RUN wget https://github.com/Unidata/netcdf-c/archive/refs/tags/v4.9.2.tar.gz && \
  tar xvf v4.9.2.tar.gz && cd netcdf-c-4.9.2 && \
  ./configure --prefix=/usr && make -j36 && make install && cd ..

RUN wget https://github.com/Unidata/netcdf-fortran/archive/refs/tags/v4.6.1.tar.gz && \
  tar xvf v4.6.1.tar.gz && cd netcdf-fortran-4.6.1 && \
  ./configure --prefix=/usr && make -j36 && make install && cd ..

RUN wget https://github.com/Houcze/gtool/archive/refs/tags/20230628.tar.gz && \
  tar xvf 20230628.tar.gz && cd gtool-20230628 && chmod 755 * && \
  ./configure --prefix=/usr --with-netcdf=/usr/lib/libnetcdf.a --with-netcdf=/usr/lib/libnetcdff.a --with-netcdf-include=/usr/include && make && make install && cd ..

RUN rm -rf /src/openmpi-4.1.5 /src/hdf5-hdf5-1_14_1-2 /src/netcdf-c-4.9.2 /src/netcdf-fortran-4.6.1 /src/gtool-20230628

WORKDIR /

CMD ["/bin/bash"]

