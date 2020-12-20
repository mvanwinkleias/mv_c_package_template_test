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

# This (hopefully) will be temporary.  Instead of modifying the
# globbing behavior with shopt -s dotglob, I just copy things
# in two steps.
for template_dir in "${template_dirs[@]}"
do
    # echo "$template_dir is a template dir"

	cp -r "$stuff_dir/".[^.]* "$template_dir/"
	cp -r "$stuff_dir/"* "$template_dir/"
done

exit 0
