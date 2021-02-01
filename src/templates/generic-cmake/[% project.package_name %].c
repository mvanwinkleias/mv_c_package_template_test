
#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>
#include "version.h"

// These were defined in process.h

int ARGC;
char **ARGV;


static void version(void)
{
	printf("[% project.package_name %] v" [% project.package_to_variable_name_to_upper_case %]_VERSION "\n");
}

static void help(void)
{
	printf("Usage:\n");
	printf("  %s {--help|--version}\n", ARGV[0]);
}

static int global_options(int argc, char *argv[])
{
	static struct option long_options[] = {
		{"version", no_argument, NULL, 'v'},
		{"help", no_argument, NULL, 'h'},
		{0, 0, 0, 0}
	};
	int option;
	int option_index;

	while ((option = getopt_long(argc, argv, "vh", long_options, &option_index)) != -1) {
		switch (option) {
			case 'v':
				version();
				return 0;
			case 'h':
				version();
				printf("\n");
				help();
				return 0;
			case '?':
				help();
				return option == 'h';
		}
	}

	help();
	return 1;
}

int main(int argc, char *argv[])
{

	ARGC = argc;
	ARGV = argv;

	printf("Hello, world!\n");
	
	return global_options(argc, argv);
	exit(0);
}
