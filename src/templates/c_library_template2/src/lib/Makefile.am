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
	[% project.project_name %].h \
	[% project.project_name %].map 

include_HEADERS = [% project.project_name %].h

# If we don't initialize this, we can't use += later, so
# we just assume this is the only place where this variable is initailzed.
lib[% project.package_to_variable_name %]_la_LDFLAGS = ''
# You can use ```objdump -T``` to check the version info of the symbols of the resulting
# .so file(s)

# This is how to use ldd version scripts for the ABI.
# See
# * https://www.gnu.org/software/gnulib/manual/html_node/LD-Version-Scripts.html
lib[% project.package_to_variable_name %]_la_LDFLAGS += -Wl,--version-script=$(srcdir)/[% project.project_name %].map

[% IF 0 == 1 %]

# I ran into this some time ago and don't entirely understand what it's for.
# This is a stub for me to remember.
# lib[% project.package_to_variable_name %]_la_LDFLAGS += -version-info 0:0:0

[% END %]

# === End Libraries ===
