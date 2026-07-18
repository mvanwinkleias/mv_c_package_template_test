#include <config.h>
#include <stdio.h>

#include <wchar.h>
#include <locale.h>

#include "[% project.project_name %].h"

int main(int argc, char *argv[])
{
	setlocale(LC_ALL, "");
	wprintf(L"Hello world from %s\n", PACKAGE_STRING);
	[% project.package_to_variable_name %]_hello();

	return 0;
}
