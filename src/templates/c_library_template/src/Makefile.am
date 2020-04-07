.POSIX:
AM_CFLAGS = -std=c99 -pedantic -D_POSIX_C_SOURCE=200809L -Wall -Wextra
AM_LDFLAGS = 

bin_PROGRAMS = [% project.package_to_variable_name %]_runner
[% project.package_to_variable_name %]_runner_SOURCES = \
	[% project.package_to_variable_name %].c \
	main.c

[% project.package_to_variable_name %]_runner_CFLAGS = $(AM_CFLAGS)

lib_LTLIBRARIES = lib[% project.package_to_variable_name %].la

lib[% project.package_to_variable_name %]_la_SOURCES = \
	[% project.package_to_variable_name %].c \
	[% project.package_to_variable_name %].h

include_HEADERS = [% project.package_to_variable_name %].h


# [% project.package_to_variable_name %]_runner_LDADD  = \
# 	lib[% project.package_to_variable_name %].la

# These might be a good idea

# This might be how to add CPP stuff
# AM_CPPFLAGS =  -pedantic -Wall -Wextra
# AM_CPPFLAGS+= -std=c++11

# Here's an example for adding things
# This might not be the best way to handle adding these.
# Quoting these doesn't seem to be a good idea.

# AM_CFLAGS += -l[% project.package_to_variable_name %]
# AM_LDFLAGS += -lsome_library


lib[% project.package_to_variable_name %]_la_LDFLAGS = -version-info 0:0:0

