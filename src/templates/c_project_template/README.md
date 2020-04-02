# Hello world

Get started:

```
# This was already run for you:
autoreconf --install
```

```
# To build:
./configure
make
```

```
# To build a Debian package:
make dist-gz
# Copy the resulting file elsewhere, into it's own directory
debmake -a (name-of-tar.gz) -i debuild
```

