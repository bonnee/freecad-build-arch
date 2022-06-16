#!/bin/awk -f

BEGIN { OFS="="; ORS="\n"; "sha1sum " ENVIRON["FILENAME"]|getline hash; split(hash,hasha); }

/# BEGIN generated variables/ {
       print;
       print "pkgver",ENVIRON["PKGVER"];
       print "sha1sums","('" hasha[1] "')";
       next;
}1

