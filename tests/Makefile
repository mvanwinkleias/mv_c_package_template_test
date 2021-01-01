MAKEFILE_PATH := $(strip $(dir $(firstword $(MAKEFILE_LIST))))
MAKEFILE_NAME := $(firstword $(MAKEFILE_LIST))

makefile_dir := $(realpath $(MAKEFILE_PATH))
git_cheap_init_and_checkin := "$(makefile_dir)/cheap_git_init_and_checkin.sh"
git_porcelain := "$(makefile_dir)/git-porcelain.sh"

.PHONY: debug
debug:
	@echo "MAKEFILE_NAME: $(MAKEFILE_NAME)"
	@echo "$(MAKEFILE_PATH)"
	@echo "$(MAKEFILE_PATH)/c_project_template_test-answers.txt"
	@echo "git_cheap_init_and_checkin: $(git_cheap_init_and_checkin)"
	@echo "git_porcelain: $(git_porcelain)"
	

.PHONY: run_all_tests
run_all_tests:
	make -f "$(MAKEFILE_NAME)" clean_all
	make -f "$(MAKEFILE_NAME)" -j4 test_all

.PHONY: test_all
test_all: \
	test_c_project_all_automatic_tests \
	test_c_library_all_automatic_tests \
	test_c_library2_all_automatic_tests \
	test_mpi_project_all_automatic_tests

.PHONY: clean_all
clean_all: \
	test_c_project_template_clean \
	test_c_library_template_clean \
	test_c_library_template2_clean \
	test_mpi_project_template_clean

# Regular C Project Tests
.PHONY: test_c_project_template_clean
test_c_project_template_clean:
	-rm -rf autopkgtest-mv-c-project

.PHONY: test_c_project_template_setup
test_c_project_template_setup: test_c_project_template_clean
	cat "$(MAKEFILE_PATH)/c_project_template_test-answers.txt" | \
	ias_package_shell.pl \
		--project-template-dir "$(MAKEFILE_PATH)/../src/templates/c_project_template" \
		--project-control-file "$(MAKEFILE_PATH)/../src/templates/c_project_template.json"
	
	cd autopkgtest-mv-c-project && $(git_cheap_init_and_checkin)

.PHONY: test_c_project_all_automatic_tests
test_c_project_all_automatic_tests: test_c_project_template_setup
	cd autopkgtest-mv-c-project && \
	make -f ExtraMakefile test_c_project_all_automatic && \
	$(git_porcelain)

# C Library Projects
.PHONY: test_c_library_template_clean
test_c_library_template_clean:
	-rm -rf autopkgtest-mv-c-library

.PHONY: test_c_library_template_setup
test_c_library_template_setup: test_c_library_template_clean
	cat "$(MAKEFILE_PATH)/c_library_template_test-answers.txt" | \
	ias_package_shell.pl \
		--project-template-dir "$(MAKEFILE_PATH)/../src/templates/c_library_template" \
		--project-control-file "$(MAKEFILE_PATH)/../src/templates/c_library_template.json"

	cd autopkgtest-mv-c-library && $(git_cheap_init_and_checkin) 

.PHONY: test_c_library_all_automatic_tests
test_c_library_all_automatic_tests: test_c_library_template_setup
	cd autopkgtest-mv-c-library && \
	make -f ExtraMakefile test_c_project_all_automatic && \
	$(git_porcelain)

# C Library2 Projects
.PHONY: test_c_library_template2_clean
test_c_library_template2_clean:
	-rm -rf autopkgtest-mv-c-library2

.PHONY: test_c_library_template2_setup
test_c_library_template2_setup: test_c_library_template2_clean
	cat "$(MAKEFILE_PATH)/c_library_template2_test-answers.txt" | \
	ias_package_shell.pl \
		--project-template-dir "$(MAKEFILE_PATH)/../src/templates/c_library_template2" \
		--project-control-file "$(MAKEFILE_PATH)/../src/templates/c_library_template2.json"

	cd autopkgtest-mv-c-library2 && $(git_cheap_init_and_checkin) 

.PHONY: test_c_library2_all_automatic_tests
test_c_library2_all_automatic_tests: test_c_library_template2_setup
	cd autopkgtest-mv-c-library2 && \
	make -f ExtraMakefile test_c_project_all_automatic && \
	$(git_porcelain)

# MPI Projects

.PHONY: test_mpi_project_template_clean
test_mpi_project_template_clean:
	-rm -rf autopkgtest-mv-c-mpi-project

.PHONY: test_mpi_project_template_setup
test_mpi_project_template_setup: test_c_project_template_clean
	cat "$(MAKEFILE_PATH)/c_mpi_project_template_test-answers.txt" | \
	ias_package_shell.pl \
		--project-template-dir "$(MAKEFILE_PATH)/../src/templates/c_mpi_project" \
		--project-control-file "$(MAKEFILE_PATH)/../src/templates/c_mpi_project.json"

	cd autopkgtest-mv-c-mpi-project && $(git_cheap_init_and_checkin)

.PHONY: test_mpi_project_all_automatic_tests
test_mpi_project_all_automatic_tests: test_mpi_project_template_setup
	cd autopkgtest-mv-c-mpi-project && \
	make -f ExtraMakefile test_mpi_project_all_automatic && \
	$(git_porcelain)

