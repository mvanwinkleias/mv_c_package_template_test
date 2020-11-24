MAKEFILE_PATH := $(strip $(dir $(firstword $(MAKEFILE_LIST))))

.PHONY: test_c_project_template_setup

debug:
	echo "$(MAKEFILE_PATH)"
	echo "$(MAKEFILE_PATH)/c_project_template_test-answers.txt"

test_c_project_template_setup: test_c_project_template_clean
	cat "$(MAKEFILE_PATH)/c_project_template_test-answers.txt" | \
	ias_package_shell.pl \
	    --project-template-dir "$(MAKEFILE_PATH)/../src/templates/c_project_template" \
	    --project-control-file "$(MAKEFILE_PATH)/../src/templates/c_project_template.json"

.PHONY: test_c_project_template_clean
test_c_project_template_clean:
	-rm -rf autopkgtest-mv-c-project

.PHONY: test_c_project_template_valgrind
test_c_project_template_valgrind: test_c_project_template_setup
	cd autopkgtest-mv-c-project && \
	make -f ExtraMakefile debug_clean && \
	make -f ExtraMakefile debug_build && \
	make -f ExtraMakefile debug_run_valgrind

.PHONY: test_c_project_template_project_build
test_c_project_template_project_build: test_c_project_template_setup
	cd autopkgtest-mv-c-project && \
	make -f ExtraMakefile debug_clean && \
	make -f ExtraMakefile test_project_build

