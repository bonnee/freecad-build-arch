FROM whynothugo/makepkg
RUN paru -Syy

WORKDIR /pkg
CMD ["/bin/bash", "/run.sh"]

