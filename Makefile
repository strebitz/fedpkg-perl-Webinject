.PHONY: sources

NAME = $(shell grep 'Name:' perl-Webinject.spec | cut -d:  -f2 |  sed -e 's/^[ \t]*//')
VERSION = $(shell grep 'Version:' perl-Webinject.spec | cut -d:  -f2 |  sed -e 's/^[ \t]*//')

clean:
	rm -f Webinject-$(VERSION).tar.gz

sources:
	wget --timestamping http://search.cpan.org/CPAN/authors/id/N/NI/NIERLEIN/Webinject-$(VERSION).tar.gz
