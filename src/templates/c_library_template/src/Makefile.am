# bin_PROGRAMS = [% project.package_to_variable_name %]
#[% project.package_to_variable_name %]_SOURCES = main.c
# [% project.package_to_variable_name %]_SOURCES = [% project.package_to_variable_name %].c

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

lib_LTLIBRARIES = lib[% project.package_to_variable_name %].la
include_HEADERS = [% project.package_to_variable_name %].h
lib[% project.package_to_variable_name %]_la_SOURCES = [% project.package_to_variable_name %].c
lib[% project.package_to_variable_name %]_la_LDFLAGS = -version-info 0:0:0

