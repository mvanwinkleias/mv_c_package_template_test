#include "[% project.project_name %].h"

#include <stdio.h>
#include <wchar.h>
#include <locale.h>

void [% project.package_to_variable_name %]_hello()
{
	setlocale(LC_CTYPE, "");
	wchar_t knight = L'♘';
	wprintf(L"Hello, from [% project.package_to_variable_name %]. %lc\n", knight);
}

