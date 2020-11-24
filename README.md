# mv_c_package_template_test

Template files for Autotools C style projects

# License

copyright (C) 2020 Martin VanWinkle III, Institute for Advanced Study

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

See 

* http://www.gnu.org/licenses/

## Description

When using Autotools it can be difficult to get up and running, and in
a way that requires the least amount of changes to a base project.

These (currently) 3 templates attempt to do so.

* c_project_template - contains a "simple" main.c , and stub code
for how to link against sqlite and GTK

* c_library_template - contains a simple main.c, and links against
a library located next to it

* c_mpi_project - contains the "hello world" of mpi projects from
mpich.org

# Design Goals

## Packages

Currently, Debian packages can be run by executing make commands.
I haven't written templates for RPM packages for this yet.

## Documentation

Stub documentation for:

* manual pages
* texinfo

has been created.

## Debugging

For both ```c_project_template``` and ```c_library_template``` *make*
targets have been defined for running:

* valgrind
* gdb

# Usage

## Packages which might help

### Ubuntu

```
build-essential
fakeroot
gdebi
# mpi-default-dev
dh-autoreconf
autotools-dev
autoconf
texinfo
```

# Supplemental Documentation

Supplemental documentation for this project can be found here:

* [Supplemental Documentation](./doc/index.md)

# Installation

Ideally stuff should run if you clone the git repo, and install the deps specified
in either "DEBIAN/control" or "RPM/specfile.spec"

Optionally, you can build a package which will install the binaries in

* /opt/IAS/bin/mv-c-package-template-test/.

# Building a Package

## Requirements

### All Systems

* fakeroot

### Debian

* build-essential

### RHEL based systems

* rpm-build

## Export a specific tag (or just the project directory)

## Supported Systems

### Debian packages

```
  fakeroot make package-deb
```

### RHEL Based Systems

```
fakeroot make package-rpm
```

