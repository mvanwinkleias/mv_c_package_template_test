###### Determine where to load data files from
if conditional_use_project_datadir
datadir_path = $(srcdir)/../data
else
datadir_path = $(pkgdatadir)
endif

# Usage of .POSIX might be a good idea
.POSIX:

# Using these variables to compile 
AM_CFLAGS = \
	-std=c99 \
	-pedantic \
	-D_POSIX_C_SOURCE=200809L \
	-Wall \
	-Wextra \
	-DDATADIR=\"$(datadir_path)\"

AM_LDFLAGS = 

# This might be how to link against things:
# AM_CFLAGS += -lsome_library
# AM_LDFLAGS += -lsome_library

# AM_CFLAGS += -pthread
# AM_LDFLAGS += -lpthread

# This might be how to add CPP stuff
# AM_CPPFLAGS =  -pedantic -Wall -Wextra
# AM_CPPFLAGS+= -std=c++11

bin_PROGRAMS = [% project.project_name %]
[% project.package_to_variable_name %]_SOURCES = main.c

# Examples for compiling against things
# It might be sacrilege to use AM_CFLAGS and AM_LDFLAGS like this
# They're added here because they might be ignored in certain situations
# (such as when you have _CFLAGS and _LDFLAGS defined)
[% project.package_to_variable_name %]_CFLAGS = $(AM_CFLAGS)
[% project.package_to_variable_name %]_LDFLAGS = $(AM_LDFLAGS) 

# Here we can put things that were found by (for example) pkgconfig:
# [% project.package_to_variable_name %]_CFLAGS += $(SQLITE_CFLAGS) $(GTK_CFLAGS)
# [% project.package_to_variable_name %]_LDFLAGS += $(SQLITE_LIBS) $(GTK_LIBS)

# LDADD is used to link against libraries not found by configure.
# [% project.package_to_variable_name %]_LDADD = 




