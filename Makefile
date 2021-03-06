ifdef INST
  NSHOME ?= $(INST)
else
  ifeq ($(shell [ -f ../include/Makefile.module ] && echo ok),ok)
    NSHOME = ..
    NSBUILD = 1
  else
    NSHOME=/usr/local/aolserver
    ifneq ($(shell [ -f $(NSHOME)/include/Makefile.module ] && echo ok),ok)
      NSHOME = ../aolserver
    endif
  endif
endif

#
# Module name
#
MOD      =  nssha1.so

#
# Objects to build
#
OBJS     =  nssha1.o

#
# Header files in THIS directory
#
HDRS     =  

#
# Extra libraries
#
MODLIBS  =  

#
# Compiler flags
#
CFLAGS   = 

include  $(NSHOME)/include/Makefile.module
