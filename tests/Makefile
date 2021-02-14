MAKEFILE_PATH := $(strip $(dir $(firstword $(MAKEFILE_LIST))))
MAKEFILE_NAME := $(firstword $(MAKEFILE_LIST))
TESTS_INCLUDE_PATH=$(MAKEFILE_PATH)/make

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


include $(TESTS_INCLUDE_PATH)/autopkgtest-mv-c-project.gmk
include $(TESTS_INCLUDE_PATH)/autopkgtest-mv-c-library.gmk
include $(TESTS_INCLUDE_PATH)/autopkgtest-mv-c-library2.gmk
include $(TESTS_INCLUDE_PATH)/autopkgtest-mv-c-mpi-project.gmk
