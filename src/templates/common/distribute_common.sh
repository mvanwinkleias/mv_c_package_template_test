#!/bin/bash

# This file is not intended to be run outside of the git repository.
# Until I work out "common overlays" / common templates
# this is how I'm going to implement it.

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
stuff_dir="$script_dir/stuff"
cp -r "$stuff_dir/"* "${script_dir}/../c_project_template/"
