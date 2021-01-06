# .POSIX might be a good idea.
.POSIX:

AM_CFLAGS = \
	-std=c99 \
	-pedantic \
	-D_POSIX_C_SOURCE=200809L \
	-Wall \
	-Wextra

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

[% project.package_to_variable_name %]_CFLAGS = $(AM_CFLAGS)
[% project.package_to_variable_name %]_LDFLAGS = $(AM_LDFLAGS)

