#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cat "$DIR/c_project_template_test-answers.txt" | \
ias_package_shell.pl \
	--project-template-dir "$DIR/../src/templates/c_project_template" \
	--project-control-file "$DIR/../src/templates/c_project_template.json"

cd autopkgtest-mv-c-project
make -f ExtraMakefile debug_build
make -f ExtraMakefile debug_run_valgrind
make -f ExtraMakefile debug_clean
