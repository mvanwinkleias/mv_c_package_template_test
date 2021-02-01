Name:           [% project.package_name %]
Version:        0.0.1
Release:        0%{?dist}
Summary:        

License:        GPLv2
URL:            https://example.com/[% project.package_name %]
Source0:        project.package_name-0.0.1.tgz

BuildRequires:  asciidoc
# Requires:       

%description
[% project.description %]

%prep
%setup -q


%build
make %{?_smp_mflags}


%install
rm -rf $RPM_BUILD_ROOT
%make_install
make install-doc DESTDIR=%{?buildroot}


%files
/usr/bin/[% project.package_name %]
/usr/share/man/man1/[% project.package_name %].1.gz
%doc



%changelog
* Mon 01 Feb 2021 SomePerson - 0.0.1-0
- Initial Release


