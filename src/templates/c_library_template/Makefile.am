ACLOCAL_AMFLAGS = -I m4
SUBDIRS = src
dist_doc_DATA = README.md

pkgconfigdir = ${libdir}/pkgconfig
pkgconfig_DATA = [% project.project_name %].pc

dist_man_MANS = doc/[% project.project_name %].1 \
	doc/[% project.project_name %].3
info_TEXINFOS = doc/[% project.project_name %].texi

