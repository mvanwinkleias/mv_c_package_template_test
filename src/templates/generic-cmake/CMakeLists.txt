IF (${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION} VERSION_LESS 3.1)
  set(CMAKE_LEGACY_CYGWIN_WIN32 0) # Remove when CMake > 2.8.4 is required
  cmake_minimum_required(VERSION 2.8)
ELSE()
  cmake_minimum_required(VERSION 3.1)
ENDIF()

project([% project.package_name %])
include(GNUInstallDirs)
find_package(PkgConfig REQUIRED)

IF (${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION} VERSION_LESS 3.4)
  # pkg_get_variable is not available until CMake >= 3.4.0
  # Debian oldstable still packages CMake 3.0.2
  function(pkg_get_variable _output_name _pkg _name)
    execute_process(COMMAND ${PKG_CONFIG_EXECUTABLE} --variable=${_name} ${_pkg}
                    OUTPUT_VARIABLE _pkg_result
                    OUTPUT_STRIP_TRAILING_WHITESPACE)

    set("${_output_name}" "${_pkg_result}" CACHE STRING "pkg-config variable ${_name} of ${_pkg}")
  endfunction()

  pkg_get_variable(BASH_COMPLETION_PREFIX bash-completion prefix)
  if(BASH_COMPLETION_PREFIX)
    set(BASH_COMPLETION_FOUND TRUE)
  endif()

ELSE()

  include(FindPkgConfig)
  pkg_search_module(BASH_COMPLETION bash-completion)

ENDIF()

if((APPLE))
  set(ENV{PKG_CONFIG_PATH} "$ENV{PKG_CONFIG_PATH}:/usr/local/opt/curl/lib/pkgconfig")
endif()

set(PROJECT_NAME [% project.package_name %])

file(GLOB PROJECT_HEADERS *.h version.h) 
file(GLOB PROJECT_SOURCES *.c)

set(PROJECT_DEFINITIONS "_GNU_SOURCE")

set(PROJECT_FLAGS "-std=gnu99 -pedantic -Wall -Wextra -Wno-language-extension-token")
if(APPLE)
  set(PROJECT_FLAGS "${PROJECT_FLAGS} -Wno-deprecated-declarations")
endif()

execute_process(COMMAND ./[% project.package_name %]-version-gen
	WORKING_DIRECTORY ${CMAKE_SOURCE_DIR})

# Main [% project.package_name %] executable
add_executable(${PROJECT_NAME} ${PROJECT_HEADERS} ${PROJECT_SOURCES})
set_target_properties(${PROJECT_NAME} PROPERTIES
  C_STANDARD 99
  COMPILE_FLAGS ${PROJECT_FLAGS}
  COMPILE_DEFINITIONS ${PROJECT_DEFINITIONS}
)

target_link_libraries(${PROJECT_NAME} ) # libraries went here
if (CMAKE_SYSTEM_NAME MATCHES "OpenBSD")
  target_link_libraries(${PROJECT_NAME} "-lkvm")
endif (CMAKE_SYSTEM_NAME MATCHES "OpenBSD")

add_custom_command(OUTPUT [% project.package_name %].1 DEPENDS ${CMAKE_SOURCE_DIR}/[% project.package_name %].1.txt
        COMMAND a2x -D ./ --no-xmllint -f manpage ${CMAKE_SOURCE_DIR}/[% project.package_name %].1.txt)
add_custom_command(OUTPUT [% project.package_name %].1.html DEPENDS ${CMAKE_SOURCE_DIR}/[% project.package_name %].1.txt
        COMMAND asciidoc -b html5 -a data-uri -a icons -a toc2 -o [% project.package_name %].1.html ${CMAKE_SOURCE_DIR}/[% project.package_name %].1.txt)

install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION bin)


add_custom_target(doc-man DEPENDS [% project.package_name %].1)
add_custom_target(doc-html DEPENDS [% project.package_name %].1.html)
# See https://cmake.org/pipermail/cmake/2009-January/026520.html
add_custom_target(install-doc COMMAND ${CMAKE_COMMAND} -DMANDIR=${CMAKE_INSTALL_FULL_MANDIR} -P ${CMAKE_SOURCE_DIR}/cmake_extras/install_doc.cmake DEPENDS doc-man)
add_custom_target(uninstall COMMAND ${CMAKE_COMMAND} -DPROJECT_NAME=${PROJECT_NAME} -DMANDIR=${CMAKE_INSTALL_FULL_MANDIR} -P ${CMAKE_SOURCE_DIR}/cmake_extras/uninstall.cmake)
