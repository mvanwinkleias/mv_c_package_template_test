# These might be a good idea
.POSIX:
AM_CFLAGS = -std=c99 -pedantic -D_POSIX_C_SOURCE=200809L -Wall -Wextra
AM_LDFLAGS = 

# This might be how to add CPP stuff
# AM_CPPFLAGS =  -pedantic -Wall -Wextra
# AM_CPPFLAGS+= -std=c++11

# This might be how to link against things:
# AM_CFLAGS += -l[% project.project_name %]
# AM_LDFLAGS += -lsome_library


# === Libraries ===
# Libraries that are generated and to be installed by this:
pkgconfigdir = ${libdir}/pkgconfig
pkgconfig_DATA = [% project.project_name %].pc

lib_LTLIBRARIES = lib[% project.project_name %].la

lib[% project.package_to_variable_name %]_la_SOURCES = \
	[% project.project_name %].c \
	[% project.project_name %].h

include_HEADERS = [% project.project_name %].h

lib[% project.package_to_variable_name %]_la_LDFLAGS = -version-info 0:0:0

# -Wl,--version-script=[% project.project_name %].map

# === End Libraries ===
