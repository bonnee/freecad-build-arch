#!/bin/awk -f

BEGIN { OFS="="; ORS="\n" }

/# BEGIN generated variables/ {
       print;
       print "pkgver",ENVIRON["PKGVER"];
       print "source","(https://github.com/Bonnee/freecad-build-arch/releases/download/" ENVIRON["RELEASE_TAG"] "/freecad-archive.tar.gz)";
       print "sha1sums","(SKIP)";
       next;
}1

