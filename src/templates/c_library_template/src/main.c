#include <config.h>
#include <stdio.h>

#include "[% project.project_name %].h"

int main (void) {
	puts ("Hello world from " PACKAGE_STRING);
	[% project.package_to_variable_name %]_hello();
	return 0;
}
