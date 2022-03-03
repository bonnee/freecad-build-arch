#!/bin/awk -f

BEGIN { OFS="="; ORS="\n" }

/# BEGIN generated variables/ {
       print;
       print "pkgver",ENVIRON["PKGVER"];
       print "sha1sums","(SKIP)";
       next;
}1

