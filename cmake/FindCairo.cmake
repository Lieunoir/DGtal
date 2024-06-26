# Locate cairo
# This module defines
# CAIRO_INCLUDE_DIRS, where to find the headers
# CAIRO_LIBRAIRIES cairo libraires
#


FIND_PATH(CAIRO_INCLUDE_DIRS cairo.h
    $ENV{CAIRODIR}/include
    $ENV{CAIRODIR}
    ~/Library/Frameworks
    /Library/Frameworks
    /usr/local/include
    /usr/include
    /usr/include/cairo # MT
    /usr/local/include/cairo #brew, manual
    /sw/include # Fink
    /opt/local/include # DarwinPorts
    /opt/local/include/cairo # DarwinPorts # MT
    /opt/csw/include # Blastwave
    /opt/include/cairo
    /usr/X11R6/include/cairo
)


find_library(CAIRO_LIBRARIES
             NAMES cairo
             PATHS /usr/lib
                  /usr/local/lib
                 ENV CAIRO_ROOT
                 ENV LD_LIBRARY_PATH
                 ENV LIBRARY_PATH
             PATH_SUFFIXES cairo
            )

set(CAIRO_FOUND 0)
if(CAIRO_LIBRARIES AND CAIRO_INCLUDE_DIRS)
  set(CAIRO_FOUND 1)
endif()
