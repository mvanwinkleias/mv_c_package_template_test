AC_INIT([[% project.project_name %]], [1.0], [bug-automake@gnu.org])
AM_INIT_AUTOMAKE([-Wall -Werror foreign])
AC_PROG_CC
dnl If you are using c++, uncomment this:
dnl AC_PROG_CXX
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_FILES([
 Makefile
 src/lib/Makefile
 src/lib/[% project.project_name %].pc
 tests/Makefile
])
AC_CONFIG_MACRO_DIRS([m4])

AM_PROG_AR
LT_INIT


AC_OUTPUT

