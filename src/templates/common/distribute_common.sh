#!/bin/bash

# This file is not intended to be run outside of the git repository.
# Until I work out "common overlays" / common templates
# this is how I'm going to implement it.

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
stuff_dir="$script_dir/stuff"

template_dirs=( \
	"${script_dir}/../c_project_template/" \
	"${script_dir}/../c_library_template/" \
	"${script_dir}/../c_mpi_project/" \
)

for template_dir in "${template_dirs[@]}"
do
    # echo "$template_dir is a template dir"
	cp -r "$stuff_dir/"* "$template_dir/"
done

exit 0
