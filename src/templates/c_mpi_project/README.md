# Hello world

## Getting Started

The target, initialize_project, in ExtraMakefile, has already been run for you.

```
# To build:
./configure
make
```

# To make a Debian Package

```
make -f ExtraMakefile test_project_build
```


# To compile on EL / RPM based systems:

If your environment uses "module load...", for example:
```
module load openmpi/gcc/3.0.3/64
```

Or, you might need to add this to your environment:
```
export PATH=$PATH:/usr/lib64/openmpi/bin
```

Then:

```
make -f ExtraMakeFile test_build
```

