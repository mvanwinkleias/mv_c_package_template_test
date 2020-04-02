#ifndef [% project.project_name %]__
#define [% project.project_name %]__

extern void [% project.project_name %]_hello(void);

#endif // [% project.project_name %]__

// Compile this with:
//
// gcc -c -Wall -Werror -fpic hello_ias.c
// gcc -shared -o libhello_ias.so hello_ias.o
