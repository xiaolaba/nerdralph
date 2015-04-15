#!/bin/bash

#
#Save base/build dir
#
base=${PWD}

#
# Check , then get package versions 
#
if [ ! -e ${base}/package-versions ]
then
echo The file ${base}/package-versions must exist 
exit 1
fi
#

#
# Get package versions 
#
source ${base}/package-versions
#

#
# Get GDB
#
#wget -cq  ftp://sourceware.org/pub/insight/releases/${insighttar}
#wget -cq ftp://ftp.sunet.se/pub/gnu/gdb/${gdbtar}

#
# Get Binutils
#
#wget -cq  ftp://ftp.dkuug.dk/pub/gnu/ftp/gnu/binutils/binutils-2.19.1.tar.bz2
wget -cq  http://ftp.gnu.org/gnu/binutils/${binutilstar}

#
# Get avr-libc
#
#
#wget -cq  http://download.savannah.gnu.org/releases/avr-libc/avr-libc-user-manual-${avrlibcver}.pdf.bz2
#wget -cq  http://download.savannah.gnu.org/releases/avr-libc/${avrlibctar}

# GCC Pre-requisites - see https://gcc.gnu.org/install/prerequisites.html

#
# Get GMP
#
#wget -cq http://ftp.sunet.se/pub/gnu/gmp/gmp-4.2.4.tar.bz2
wget -cq http://ftp.sunet.se/pub/gnu/gmp/${gmptar} &

#
# Get MPFR
#
#wget -cq http://www.mpfr.org/mpfr-2.4.1/${mpfrtar}
wget -cq http://ftp.sunet.se/pub/gnu/mpfr/${mpfrtar} &

#
# Get MPC 
#
wget -cq http://www.multiprecision.org/mpc/download/${mpctar} &

#
#Get GCC
#
#wget -cq  ftp://ftp.dkuug.dk/pub/gnu/ftp/gnu/gcc/gcc-4.3.2/gcc-4.3.2.tar.bz2
wget -cq  http://ftp.gnu.org/gnu/gcc/${gcccore}/${gcccoretar}

#
# Done
#

