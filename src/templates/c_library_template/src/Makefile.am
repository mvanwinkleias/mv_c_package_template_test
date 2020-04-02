ACLOCAL_AMFLAGS = -I m4

# bin_PROGRAMS = [% project.project_name %]
#[% project.project_name %]_SOURCES = main.c
# [% project.project_name %]_SOURCES = libautomake-library-test.c

# These might be a good idea
AM_CFLAGS = -std=c99 -pedantic -D_POSIX_C_SOURCE=200809L -Wall -Wextra
AM_LDFLAGS = 

# This might be how to add CPP stuff
# AM_CPPFLAGS =  -pedantic -Wall -Wextra
# AM_CPPFLAGS+= -std=c++11

# Here's an example for adding things
# This might not be the best way to handle adding these.
# Quoting these doesn't seem to be a good idea.

# AM_CFLAGS += -pthread
# AM_LDFLAGS += -lpthread

lib_LTLIBRARIES = lib[% project.project_name %].la
include_HEADERS = [% project.project_name %].h
lib[% project.project_name %]_la_SOURCES = [% project.project_name %].c
lib[% project.project_name %]_la_LDFLAGS = -version-info 0:0:0

