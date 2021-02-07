#!/bin/bash

build_dir=`pwd`/build
rpmbuild --define "_topdir ${build_dir}" -ta a-sample-project1-1.0.tar.gz
