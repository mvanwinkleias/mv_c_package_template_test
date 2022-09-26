# Buildroot: /home/some-user/src/junk/rpm_tries/[% project.project_name %]-1.0
Name: [% project.project_name %]
Version: 1.0
Release: 0
Summary: TODO -- Summary
License: TODO -- License
Distribution: TODO -- Distribution
Group: TODO -- GROUP
# Url: TODO -- URL

Source0: %{name}-%{version}.tar.gz

# %define _rpmdir ../
# %define _rpmfilename %%{NAME}-%%{VERSION}-%%{RELEASE}.%%{ARCH}.rpm
%define _unpackaged_files_terminate_build 0

%description
TODO -- DESCRIPTION

%prep
%setup -q

%build

%configure
make CFLAGS="$RPM_OPT_FLAGS" "CPPFLAGS=$(getconf LFS_CFLAGS)" %{?_smp_mlags}

%install
rm -rf $RPM_BUILD_ROOT

# make DESTDIR=%{buildroot} install
%make_install

%files
"/usr/bin/[% project.project_name %]"
%dir "/usr/share/[% project.project_name %]/"
%dir "/usr/share/[% project.project_name %]/text/"
"/usr/share/[% project.project_name %]/text/hello.txt"
%dir "/usr/share/doc/[% project.project_name %]/"
"/usr/share/doc/[% project.project_name %]/README.Debian"
"/usr/share/doc/[% project.project_name %]/README.md"
"/usr/share/doc/[% project.project_name %]/changelog.Debian.gz"
"/usr/share/doc/[% project.project_name %]/copyright"
"/usr/share/info/[% project.project_name %].info.gz"
"/usr/share/man/man1/[% project.project_name %].1.gz"
