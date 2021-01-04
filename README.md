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

These (currently) 4 templates attempt to do so.

* c_project_template - contains a "simple" main.c , and stub code
for how to link against SQLite and GTK

* c_library_template - contains a simple main.c, and links against
a library located next to it

* c_library_template2 - similar to c_library_template, except libraries
are located in lib/

* c_mpi_project - contains the "hello world" of mpi projects from
mpich.org

# Design Goals

## Everything Should Just Work

These things are automatically tested on each project:

* configure
* make distcheck
* make dist-gzip
* make
* make install
* debmake ... (to get a Debian package)

Manual tests:

The following things are not automatically tested:

* pkgconfig for a project from a *library* template works
* The examples for using pkgconfig to compile against GTK, or SQLite (for example)
in a *c_project_template*

## Non-interference With Autotools "Style"

There are things that have been stated as against the philosophy of Autotools.

Currently, the only questionable thing (I know of) that might be going against
the philosophy is a configure option, *use_project_data_dir=1*,
in *c_project_template* to cause the DATADIR to refer to the *data* directory of
the project using a relative path.  Even though the DATADIR option can be
specified as an argument, making it a flag with a unique name seemed convenient. 

A file, *ExtraMakefile* contains make targets for debug builds.  Although the
project maintainer shouldn't need to worry about things like debug builds,
it is considered okay for examples to be provided.

## Linking Against Libraries

Examples show how to link against both pkgconfig style libraries
and just by adding options to the appropriate entries related to *ld*.

## pkgconfig

The "library" templates correctly use pkgconfig so that when a project
wants to use pkgconfig to link against the libraries, it works.

## Development Cycle

I find myself doing the following often:

```
mkdir build
cd build
../configure --prefix=`pwd`/install
```

And when I change the source code:

```
make
./src/some_program
```

I believe that (short of modifying the files related to autotools,
interacting with revision control, etc)
editing, and running make should be all that's required in a development
cycle.

### Design Patterns 

The C templates go from simple to what I'd call "medium" complexity.  Adding source
files to a project shouldn't be difficult, and should follow the patterns
that have already been laid out.

### Revision Control

Transient files related to building the project are not checked in.
I believe I have checked in what needs to be.

### Data Files

In *c_project_template*, a  configure option, *use_project_datadir=1*,
has been added which causes
the DATADIR to always refer to data/ in the project directory.
When building the project for installation, don't use
that option and data files should be installed into the correct place.

## Packages

Currently, Debian packages can be run by executing make commands.
I haven't written templates for RPM packages for this yet.

## Documentation

Stub documentation for:

* manual pages
* texinfo

has been created.

## Debugging

For all C / MPI style projects ``` *make*
targets have been defined for running:

* valgrind
* gdb

The valgrind run for a project that uses *mpic* complains about memory
leaks.  I haven't found out how to avoid that.

# Known Issues

* valgrind for an mpi style project complains about memory leaks

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
debmake
```

### RPM Based Systems

```
texinfo
mpich
autoconf
automake
libtool
openmpi-devel
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

