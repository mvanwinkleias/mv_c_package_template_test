Summary:	a-sample-project1
Name:		a-sample-project1
Version:	1.0
Release:	1
License:	foo
Group:		foo
Url:		foo
Source0:	%{name}-%{version}.tar.gz

%description
foo.

#------------------------------------------------------------------

%prep
%setup -q

%build
%configure
make CFLAGS="$RPM_OPT_FLAGS" "CPPFLAGS=$(getconf LFS_CFLAGS)" %{?_smp_mlags}

%install
make DESTDIR=%{buildroot} install

