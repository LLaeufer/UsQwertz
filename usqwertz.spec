Name:           usqwertz
Version:        0.0.1
Release:        1%{?dist}
Summary:        A mixture of the US Qwerty lazout and the German Qwertz layout
BuildArch:      noarch

License:        MIT
URL:            https://github.com/llaeufer/usqwertz
Source0:        %{name}-%{version}.tar.gz

BuildRequires:  bash
Requires:       bash

%description
mixture of the US Qwerty layout and the German Qwertz layout

%prep
%setup -q

%install
mkdir -p $RPM_BUILD_ROOT/usr/share/X11/xkb/symbols/
cp custom $RPM_BUILD_ROOT/usr/share/X11/xkb/symbols/custom
chmod 644 $RPM_BUILD_ROOT/usr/share/X11/xkb/symbols/custom

%files
/usr/share/X11/xkb/symbols/custom

%changelog
* Sun Feb 06 2022 L. Läufer
- initial release as an RPM
