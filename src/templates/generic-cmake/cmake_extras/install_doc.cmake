execute_process(COMMAND install -v -d $ENV{DESTDIR}${MANDIR}/man1)
execute_process(COMMAND install -m 0644 -v ${CMAKE_BINARY_DIR}/[% project.package_name %].1 $ENV{DESTDIR}${MANDIR}/man1/[% project.package_name %].1)
