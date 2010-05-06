#!/bin/bash

# Script directory
d=`dirname $0`

# Find script directory
pushd ${d}
p=`pwd`
popd

# Load versions
source ${d}/hudson_config.sh

function usage() {
  echo "Usage: $0 <srcdir>"
  exit 1
}

# Check for one argument
if [ $# -lt 1 ]; then
  usage
fi

# Enter source directory
srcdir=$1
if [ ! -d $srcdir ]; then
  exit 1
else
  pushd $srcdir
fi

# Download the EDB binaries if necessary
if [ ! -f ${buildroot}/${edb_zip} ]; then
  curl ${edb_url} > ${buildroot}/${edb_zip}
fi
# Clean up and unzip the EDB directory
if [ -d ${buildroot}/pgsql ]; then
  rm -rf ${buildroot}/pgsql
fi
unzip ${buildroot}/${edb_zip} -d ${buildroot}

# Patch PGXS
pushd ${buildroot}/pgsql/lib/postgresql/pgxs/src
patch -p0 < ${p}/pgxs.patch
rv=$?
if [ $rv -gt 0 ]; then
  echo "patch failed with return value $rv"
  exit 1
fi
popd

# Copy the Proj libraries into the pgsql build directory
if [ -d ${buildroot}/proj ]; then
  cp -rf ${buildroot}/proj/* ${buildroot}/pgsql
else
  exit 1
fi

# Copy the GEOS libraries into the pgsql build directory
if [ -d ${buildroot}/geos ]; then
  cp -rf ${buildroot}/geos/* ${buildroot}/pgsql
else
  exit 1
fi

# Check for the existence of the GTK environment
if [ ! -d $HOME/gtk ]; then
  exit 1
fi
if [ ! -d $HOME/.local ]; then
  exit 1
fi

# Set up paths necessary to build
export PATH=${buildroot}/pgsql/bin:${HOME}/gtk/inst/bin:${HOME}/.local/bin:${PATH}
export DYLD_LIBRARY_PATH=${buildroot}/pgsql/lib

# Configure PostGIS
./autogen.sh
export CC=gcc-4.0 
export CFLAGS="-O2 -arch i386 -arch ppc -mmacosx-version-min=10.4" 
export CXX=g++-4.0 
export CXXFLAGS="-O2 -arch i386 -arch ppc -mmacosx-version-min=10.4" 
./configure \
  --with-pgconfig=${buildroot}/pgsql/bin/pg_config \
  --with-geosconfig=${buildroot}/pgsql/bin/geos-config \
  --with-projdir=${buildroot}/pgsql \
  --with-xml2config=/usr/bin/xml2-config \
  --disable-dependency-tracking 
rv=$?
if [ $rv -gt 0 ]; then
  echo "configure failed with return value $rv"
  exit 1
fi

# Build PostGIS
make clean && make && make install
rv=$?
if [ $rv -gt 0 ]; then
  echo "build failed with return value $rv"
  exit 1
fi

# Re-Configure without ppc arch so we can link to GTK
export CFLAGS="-O2 -arch i386 -mmacosx-version-min=10.4" 
export CXXFLAGS="-O2 -arch i386 -mmacosx-version-min=10.4" 

# Re-configure with GTK on the path
jhbuild run \ 
./configure \
  --with-pgconfig=${buildroot}/pgsql/bin/pg_config \
  --with-geosconfig=${buildroot}/pgsql/bin/geos-config \
  --with-projdir=${buildroot}/pgsql \
  --with-xml2config=/usr/bin/xml2-config \
  --with-gui \
  --disable-dependency-tracking
rv=$?
if [ $rv -gt 0 ]; then
  echo "configure failed with return value $rv"
  exit 1
fi

pushd liblwgeom
jhbuild run make clean all
rv=$?
if [ $rv -gt 0 ]; then
  echo "build failed with return value $rv"
  exit 1
fi
popd
pushd loader
jhbuild run make clean all
rv=$?
if [ $rv -gt 0 ]; then
  echo "build failed with return value $rv"
  exit 1
fi
cp -f shp2pgsql-gui ${buildroot}/pgsql/bin
popd

# Exit cleanly
exit 0
    