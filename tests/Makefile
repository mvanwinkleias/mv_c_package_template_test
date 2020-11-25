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

.PHONY: test_c_project_all_automatic_tests
test_c_project_all_automatic_tests: test_c_project_template_setup
	cd autopkgtest-mv-c-project && \
	make -f ExtraMakefile test_c_project_all_automatic
