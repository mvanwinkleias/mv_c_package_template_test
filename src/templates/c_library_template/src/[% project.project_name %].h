#include <stdio.h>

#ifndef [% project.package_to_variable_name %]__
#define [% project.package_to_variable_name %]__

extern void [% project.package_to_variable_name %]_hello(void);

#endif // [% project.package_to_variable_name %]__

// Compile this with:
//
// gcc -c -Wall -Werror -fpic hello_ias.c
// gcc -shared -o libhello_ias.so hello_ias.o
