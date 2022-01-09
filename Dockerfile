FROM whynothugo/makepkg
RUN paru -Syy

COPY makepkg.conf /etc/makepkg.conf

WORKDIR /pkg
CMD ["/bin/bash", "/run.sh"]

