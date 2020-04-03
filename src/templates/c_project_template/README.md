# [% project.project_name %]

[% project.description %]

# Wiki Page

* [% project.wiki_page %]

# Ticket

* [% project.ticket %]

# Building
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
make dist-gzip
# Copy the resulting file elsewhere, into it's own directory
debmake -a (name-of-tar.gz) -i debuild
```


