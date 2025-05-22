# .POSIX might be a good idea.
.POSIX:
AM_CFLAGS = -std=c99 -pedantic -D_POSIX_C_SOURCE=200809L -Wall -Wextra -I$(top_srcdir)/src/lib
AM_LDFLAGS = -L../src/lib

# This might be how to add CPP stuff
# AM_CPPFLAGS =  -pedantic -Wall -Wextra
# AM_CPPFLAGS+= -std=c++11

# This might be how to link against a library in this project which might
# not be available with pkgconfig yet.
AM_CFLAGS += -l[% project.project_name %]
# AM_LDFLAGS += -lsome_library

# AM_CFLAGS += -pthread
# AM_LDFLAGS += -lpthread

# === Programs ===

check_PROGRAMS = test[% project.project_name %] 
test[% project.package_to_variable_name %]_SOURCES = \
	test[% project.project_name %].c
TESTS = $(check_PROGRAMS)

# Needed, as per:
# https://www.gnu.org/software/automake/manual/html_node/Objects-created-both-with-libtool-and-without.html
test[% project.package_to_variable_name %]_CFLAGS = $(AM_CFLAGS)
# Included for completeness:
test[% project.package_to_variable_name %]_LDFLAGS = $(AM_LDFLAGS)

# === End Programs ===

