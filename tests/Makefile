MAKEFILE_PATH := $(strip $(dir $(firstword $(MAKEFILE_LIST))))

.PHONY: debug
debug:
	echo "$(MAKEFILE_PATH)"
	echo "$(MAKEFILE_PATH)/c_project_template_test-answers.txt"

.PHONY: test_all
test_all: \
	test_c_project_all_automatic_tests \
	test_c_library_all_automatic_tests \

.PHONY: clean_all
clean_all: \
	test_c_project_template_clean \
	test_c_library_template_clean

.PHONY: test_c_project_template_clean
test_c_project_template_clean:
	-rm -rf autopkgtest-mv-c-project

.PHONY: test_c_project_template_setup
test_c_project_template_setup: test_c_project_template_clean
	cat "$(MAKEFILE_PATH)/c_project_template_test-answers.txt" | \
	ias_package_shell.pl \
	    --project-template-dir "$(MAKEFILE_PATH)/../src/templates/c_project_template" \
	    --project-control-file "$(MAKEFILE_PATH)/../src/templates/c_project_template.json"

.PHONY: test_c_project_all_automatic_tests
test_c_project_all_automatic_tests: test_c_project_template_setup
	cd autopkgtest-mv-c-project && \
	make -f ExtraMakefile test_c_project_all_automatic

# c_library_template_test-answers.txt
.PHONY: test_c_library_template_clean
test_c_library_template_clean:
	-rm -rf autopkgtest-mv-c-library

.PHONY: test_c_library_template_setup
test_c_library_template_setup: test_c_library_template_clean
	cat "$(MAKEFILE_PATH)/c_library_template_test-answers.txt" | \
	ias_package_shell.pl \
		--project-template-dir "$(MAKEFILE_PATH)/../src/templates/c_library_template" \
		--project-control-file "$(MAKEFILE_PATH)/../src/templates/c_library_template.json"

.PHONY: test_c_library_all_automatic_tests
test_c_library_all_automatic_tests: test_c_library_template_setup
	cd autopkgtest-mv-c-library && \
	make -f ExtraMakefile test_c_project_all_automatic
